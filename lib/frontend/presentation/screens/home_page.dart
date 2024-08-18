import 'package:devzur/frontend/connection/constant/lists.dart';
import 'package:devzur/frontend/connection/controller/page_home_view.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/components/category_items.dart';
import 'package:devzur/frontend/presentation/components/header.dart';
import 'package:devzur/frontend/presentation/widgets/cards/card_min_product.dart';
import 'package:devzur/frontend/presentation/widgets/cards/card_product.dart';
import 'package:devzur/frontend/presentation/widgets/materails/fields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final providerPageHomeView =
        Provider.of<PageHomeView>(context, listen: true);
    return Scaffold(
      body: listItemsBottom[providerPageHomeView.selectedIndex].page,
      bottomNavigationBar: providerPageHomeView.isItemTapped(3)
          ? null
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: List.generate(listItemsBottom.length, (index) {
                var item = listItemsBottom[index];
                return BottomNavigationBarItem(
                  icon: Icon(
                    providerPageHomeView.isItemTapped(index)
                        ? item.iconSelect
                        : item.iconNotSelect,
                  ),
                  label: item.name,
                );
              }),
              currentIndex: providerPageHomeView.selectedIndex,
              onTap: providerPageHomeView.onItemTapped,
            ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderHome(),
            const Padding(
              padding: EdgeInsets.all(20),
              child: FieldSearch(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 23,
                          color: ColorApp.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const CategoryItems(),
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
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        "Best Seller",
                        style: TextStyle(
                          fontSize: 23,
                          color: ColorApp.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 130,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listProduct.length,
                        itemBuilder: (context, index) {
                          var product = listProduct[index];
                          return CardMinProduct(
                            modelProduct: product,
                          );
                        },
                      ),
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
