import 'package:flutter/material.dart';

class CategoryModel {
  String img;
  String titile;
  VoidCallback onTap;

  CategoryModel({required this.img, required this.onTap, required this.titile});
}
