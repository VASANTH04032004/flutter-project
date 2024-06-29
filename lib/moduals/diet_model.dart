import 'package:flutter/material.dart';

class DietModel {
  String title;
  String name;
  String iconPath;

  Color boxColor;
  bool viewIsSelected;

  DietModel(
      {required this.title,
      required this.name,
      required this.iconPath,
      required this.boxColor,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        title: 'March 28',
        name: 'Hamiltion Australia Is \nBack!',
        iconPath: 'assets/image.jpg',
        viewIsSelected: true,
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    diets.add(DietModel(
        title: 'March 30',
        name: 'Hamiltion Australia Is \nBack!',
        iconPath: 'assets/image.jpg',
        viewIsSelected: false,
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    return diets;
  }
}
