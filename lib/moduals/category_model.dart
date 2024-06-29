import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Lottery',
        iconPath: 'assets/icons/lottery.jpeg',
        boxColor: Color.fromARGB(255, 254, 255, 255)));

    categories.add(CategoryModel(
        name: 'Treasury',
        iconPath: 'assets/icons/treasury.jpeg',
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(CategoryModel(
        name: 'Trivia',
        iconPath: 'assets/icons/trivia.jpeg',
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(CategoryModel(
        name: 'Karaoke',
        iconPath: 'assets/icons/karaoke.jpeg',
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    return categories;
  }
}
