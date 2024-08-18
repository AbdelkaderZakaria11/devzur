import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final double stars;
  const Stars({super.key, required this.stars});

  @override
  Widget build(BuildContext context) {
    return stars == 0
        ? Container()
        : Container(
            height: 20,
            padding: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ColorApp.yelowColor.withOpacity(0.2),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star_rate_rounded,
                    size: 16,
                    color: ColorApp.yelowColor,
                  ),
                  Text(
                    "$stars",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorApp.yelowColor,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ColorApp.redColor,
      ),
      child: const Center(
        child: Text(
          "NEW",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 85,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ColorApp.background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.remove_rounded,
              size: 16,
              color: ColorApp.primaryColor,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            height: 25,
            width: 25,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.add_rounded,
              size: 16,
              color: ColorApp.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
