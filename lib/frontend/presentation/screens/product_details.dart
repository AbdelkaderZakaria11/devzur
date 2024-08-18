import 'package:devzur/frontend/connection/models/product_model.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/components/header.dart';
import 'package:devzur/frontend/presentation/widgets/alert.dart';
import 'package:devzur/frontend/presentation/widgets/materails/button.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final ModelProduct modelProduct;
  const ProductDetails({super.key, required this.modelProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: ColorApp.background,
                      child: const Image(
                        width: double.infinity,
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/images/image1.png",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              modelProduct.name,
                              style: const TextStyle(
                                color: ColorApp.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                          ),
                          Stars(
                            stars: modelProduct.stars,
                          ),
                        ],
                      ),
                      subtitle: Text(
                        modelProduct.category,
                        style: const TextStyle(
                          fontSize: 18,
                          color: ColorApp.textSubColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            modelProduct.description,
                            style: const TextStyle(
                              fontSize: 18,
                              color: ColorApp.textSubColor,
                            ),
                          ),
                        ),
                        Row(
                          children: List.generate(
                            3,
                            (index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  top: 20,
                                  bottom: 20,
                                  left: index == 0 ? 0 : 5,
                                  right: index == 3 ? 0 : 5,
                                ),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorApp.primaryColor,
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/images/image1.png",
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ColorProduct(
                                colors: modelProduct.colors,
                              ),
                              const Counter(),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: ButtonElvated(
                            onTap: () {},
                            lable: "Add to Cart | \$185",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Header(
              title: "",
              iconData: Icons.favorite_border_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class ColorProduct extends StatefulWidget {
  final List<Color> colors;
  const ColorProduct({super.key, required this.colors});

  @override
  State<ColorProduct> createState() => _ColorProductState();
}

class _ColorProductState extends State<ColorProduct> {
  Color _selectColor = Colors.white;
  @override
  void initState() {
    setState(() {
      _selectColor = widget.colors[0];
    });
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: const Text(
            "Color",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          children: List.generate(
            widget.colors.length,
            (index) {
              var color = widget.colors[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    _selectColor = color;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  height: 25,
                  width: 25,
                  decoration: _selectColor != color
                      ? null
                      : BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 1.5,
                            color: color,
                          ),
                        ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
