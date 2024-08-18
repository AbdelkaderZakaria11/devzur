import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? callbackArrow;
  final VoidCallback? callbackIcon;
  const Header(
      {super.key,
      required this.title,
      required this.iconData,
      this.callbackArrow,
      this.callbackIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 0.25,
                color: ColorApp.primaryColor,
              ),
            ),
            height: 50,
            width: 50,
            child: InkWell(
              onTap: callbackArrow ??
                  () {
                    Navigator.of(context).pop();
                  },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: ColorApp.primaryColor,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 26,
              color: ColorApp.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 0.25,
                color: ColorApp.primaryColor,
              ),
            ),
            height: 50,
            width: 50,
            child: InkWell(
              onTap: callbackIcon,
              child: Icon(
                iconData,
                color: ColorApp.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "Discover the best Furniture",
              style: TextStyle(
                fontSize: 30,
                color: ColorApp.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/images/image1.png"),
          ),
        ],
      ),
    );
  }
}
