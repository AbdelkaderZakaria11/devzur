import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/components/tile.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "My Profile",
                        style: TextStyle(
                          fontSize: 28,
                          color: ColorApp.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/images/image1.png",
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: ColorApp.primaryColor,
                            radius: 15,
                            child: Icon(
                              Icons.photo_camera_outlined,
                              size: 18,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Michael Leanon",
                        style: TextStyle(
                          fontSize: 21,
                          color: ColorApp.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "michaelleanon42@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorApp.textSubColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorApp.textSubColor,
                      ),
                    ),
                  ),
                  Tile(
                    lable: "Settings",
                    color: ColorApp.textSubColor,
                    iconData: Icons.settings_outlined,
                  ),
                  Tile(
                    lable: "Notifications",
                    color: Colors.blue,
                    iconData: Icons.notifications_outlined,
                  ),
                  Tile(
                    lable: "Order History",
                    color: ColorApp.yelowColor,
                    iconData: Icons.timer_outlined,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "General",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorApp.textSubColor,
                      ),
                    ),
                  ),
                  Tile(
                    lable: "Privacy & Policy",
                    color: Colors.blue,
                    iconData: Icons.lock_outlined,
                  ),
                  Tile(
                    lable: "Terms & Conditions",
                    color: ColorApp.yelowColor,
                    iconData: Icons.info_outlined,
                  ),
                  Tile(
                    lable: "Log Out",
                    color: ColorApp.redColor,
                    iconData: Icons.logout_outlined,
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

