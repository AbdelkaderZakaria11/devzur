import 'package:devzur/frontend/connection/models/product_model.dart';
import 'package:devzur/frontend/global/router/navigator_screen.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/global/theme/style/decoration.dart';
import 'package:devzur/frontend/presentation/screens/product_details.dart';
import 'package:flutter/material.dart';

class CardMinProduct extends StatelessWidget {
  final ModelProduct modelProduct;
  const CardMinProduct({super.key, required this.modelProduct});

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
            20,
          ),
        ),
        width: 300,
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/image1.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name of product",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: ColorApp.primaryColor,
                      ),
                    ),
                    const Text(
                      "category Product",
                      style: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "\$185",
                            style: TextStyle(
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
            ),
          ],
        ),
      ),
    );
  }
}
