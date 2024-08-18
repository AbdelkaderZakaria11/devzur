import 'package:devzur/frontend/connection/constant/lists.dart';
import 'package:devzur/frontend/connection/controller/page_home_view.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/components/header.dart';
import 'package:devzur/frontend/presentation/widgets/cards/card_cart.dart';
import 'package:devzur/frontend/presentation/widgets/cards/card_product.dart';
import 'package:devzur/frontend/presentation/widgets/materails/button.dart';
import 'package:devzur/frontend/presentation/widgets/materails/dialoge.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerPageHomeView =
        Provider.of<PageHomeView>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const CardCart();
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        "Recently View",
                        style: TextStyle(
                          fontSize: 23,
                          color: ColorApp.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 300,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listProduct.length,
                        itemBuilder: (context, index) {
                          var product = listProduct[index];
                          return CardProduct(
                            modelProduct: product,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Header(
              title: "Cart",
              iconData: Icons.delete_forever_outlined,
              callbackArrow: () {
                providerPageHomeView.onChangeItemTapped(0);
              },
              callbackIcon: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const DialogeAlertDelete();
                  },
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 145,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total (2 Items) :",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    "\$ 360",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: ColorApp.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: ButtonElvated(
                lable: "Procced to Checkout",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
