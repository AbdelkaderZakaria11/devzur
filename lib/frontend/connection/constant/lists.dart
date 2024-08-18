import 'package:devzur/frontend/connection/models/model_bottom_navigator.dart';
import 'package:devzur/frontend/connection/models/product_model.dart';
import 'package:devzur/frontend/global/theme/style/color_app.dart';
import 'package:devzur/frontend/presentation/screens/account.dart';
import 'package:devzur/frontend/presentation/screens/cart_screen.dart';
import 'package:devzur/frontend/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';

List<ModelProduct> listProduct = [
  ModelProduct(
    name: "product One",
    description: "Description One",
    imageUrl: "imageUrl",
    stars: 4.3,
    imagesUrls: [],
    category: "category One",
    price: 178,
    colors: [
      Colors.red,
      Colors.brown,
      Colors.blue,
    ],
  ),
  ModelProduct(
    name: "product Two",
    description: "Description Two",
    imageUrl: "imageUrl",
    stars: 3.7,
    imagesUrls: [],
    category: "category Two",
    price: 82,
    colors: [
      Colors.blue,
    ],
  ),
  ModelProduct(
    name: "product Three",
    description: "Description Three",
    imageUrl: "imageUrl",
    stars: 2.5,
    imagesUrls: [],
    category: "category Three",
    price: 18,
    colors: [
      Colors.red,
      Colors.brown,
    ],
  ),
  ModelProduct(
    name: "Modern Chair",
    imageUrl: "imageUrl",
    imagesUrls: [],
    stars: 0,
    category: "Armchair",
    description:
        "The simple and elegant shape makes it very suitable for those of you who like those of you who want a minimalist room Read More",
    price: 18,
    colors: [
      ColorApp.background,
      Colors.brown,
      ColorApp.redColor,
    ],
  ),
];

List listCategory = [
  "Chairs",
  "CupBoards",
  "Tables",
  "Category",
  "Landscopes",
];
List<ModelBottomNavigationBar> listItemsBottom = [
  ModelBottomNavigationBar(
    name: "Home",
    iconNotSelect: Icons.home_outlined,
    iconSelect: Icons.home,
    page: const Home(),
  ),
  ModelBottomNavigationBar(
    name: "Favorites",
    iconNotSelect: Icons.favorite_border,
    iconSelect: Icons.favorite,
    page: Container(),
  ),
  ModelBottomNavigationBar(
    name: "Scan",
    iconNotSelect: Icons.qr_code_scanner_outlined,
    iconSelect: Icons.qr_code_scanner,
    page: Container(),
  ),
  ModelBottomNavigationBar(
    name: "Cart",
    iconNotSelect: Icons.shopping_cart_outlined,
    iconSelect: Icons.shopping_cart,
    page: const CartScreen(),
  ),
  ModelBottomNavigationBar(
    name: "Profile",
    iconNotSelect: Icons.person_2_outlined,
    iconSelect: Icons.person_2,
    page: const Account(),
  ),
];
