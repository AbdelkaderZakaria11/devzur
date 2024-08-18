import 'package:devzur/frontend/connection/models/product_model.dart';
import 'package:devzur/frontend/global/router/navigator_screen.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/global/theme/style/decoration.dart';
import 'package:devzur/frontend/presentation/screens/product_details.dart';
import 'package:devzur/frontend/presentation/widgets/alert.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final ModelProduct modelProduct;
  const CardProduct({super.key, required this.modelProduct});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeScreen(
          context,
          ProductDetails(
            modelProduct: modelProduct,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        width: 200,
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorApp.background,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/image1.png",
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const News(),
                          Stars(
                            stars: modelProduct.stars,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    modelProduct.name,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: ColorApp.primaryColor,
                    ),
                  ),
                  Text(
                    modelProduct.category,
                    style: const TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$${modelProduct.price}",
                          style: const TextStyle(
                            color: ColorApp.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: decoration,
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
