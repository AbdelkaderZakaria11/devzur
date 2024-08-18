
import 'package:flutter/material.dart';

class ModelProduct {
  final String name;
  final String description;
  final double stars;
  final String imageUrl;
  final List<String> imagesUrls;
  final String category;
  final double price;
  final List<Color> colors;

  ModelProduct({
    required this.name,
    required this.description,
    required this.stars,
    required this.imageUrl,
    required this.imagesUrls,
    required this.category,
    required this.price,
    required this.colors,
  });
}

