import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/widgets/alert.dart';
import 'package:flutter/material.dart';

class CardCart extends StatefulWidget {
  const CardCart({super.key});

  @override
  State<CardCart> createState() => _CardCartState();
}

class _CardCartState extends State<CardCart> {
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Checkbox(
            value: enabled,
            onChanged: (value) {
              setState(() {
                enabled = !enabled;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.all(5),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: ColorApp.background,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Name Product",
                    style: TextStyle(
                      color: ColorApp.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    "category Product",
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          "\$ 18",
                          style: TextStyle(
                            color: ColorApp.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 21,
                          ),
                        ),
                      ),
                      Counter(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
