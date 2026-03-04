import 'package:classpr1/pages/home/widgets/category_widget.dart';
import 'package:classpr1/pages/home/widgets/drawer_body.dart';
import 'package:classpr1/pages/home/widgets/recipe_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'model/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = [
    CategoryModel(img: "assets/images/breakfast.png", title: "Breakfast"),
    CategoryModel(img: "assets/images/burger.png", title: "Lunch"),
    CategoryModel(img: "assets/images/soup.png", title: "Dinner"),
    CategoryModel(img: "assets/images/cake.png", title: "Desert"),
    CategoryModel(img: "assets/images/salad.png", title: "Salad"),
    CategoryModel(img: "assets/images/nudle.png", title: "Asian"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              SizedBox(height: 20),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 120,
                  mainAxisExtent: 100,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryWidget(
                    category: categories[index],
                    index: index,
                  );
                },
              ),
              Row(
                crossAxisAlignment: .center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Recipes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    child: Row(
                      crossAxisAlignment: .center,
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.deepOrange,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,// builderda qurilgan widgetlar hajmini egallab turadi
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return RecipeItem();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
