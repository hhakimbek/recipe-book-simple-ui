import 'dart:math';

import 'package:flutter/material.dart';

import '../model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  final int index;
  const CategoryWidget({super.key,required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: getColor(index),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(category.img,height: 40,),
          SizedBox(height: 5,),
          Text(category.title,style: TextStyle(fontWeight: FontWeight.bold,),)
        ],
      ),
    );
  }

  Color getColor(int index){
    var list = [
      Colors.blueAccent.withAlpha(100),
      Colors.red.withAlpha(100),
      Colors.purpleAccent.withAlpha(100),
      Colors.deepOrangeAccent.withAlpha(100),
      Colors.green.withAlpha(100),
      Colors.amberAccent.withAlpha(100),
    ];

    return list[index];
  }

}
