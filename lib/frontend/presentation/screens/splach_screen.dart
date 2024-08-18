import 'package:devzur/frontend/connection/controller/page_home_view.dart';
import 'package:devzur/frontend/global/router/navigator_screen.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/screens/home_page.dart';
import 'package:devzur/frontend/presentation/widgets/materails/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final providerPageHomeView =
        Provider.of<PageHomeView>(context, listen: true);
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Image(
              width: double.infinity,
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/image1.png",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: const Text(
                    "Enjoy Your Online Shopping.",
                    style: TextStyle(
                      fontSize: 36,
                      color: ColorApp.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Text(
                  "Browse through all categories and shop the best furniture for your dream house.",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorApp.textSubColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: ButtonElvated(
                    lable: "Get Started",
                    onTap: () {
                      providerPageHomeView.onChangeItemTapped(0);
                      changeScreen(
                        context,
                        const HomePage(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
