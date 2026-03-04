import 'package:classpr1/pages/favorite_screen.dart';
import 'package:classpr1/pages/profile_screen.dart';
import 'package:classpr1/pages/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'home/home_screen.dart';
import 'home/widgets/drawer_body.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: DrawerBody(),
        drawerScrimColor: Colors.black.withAlpha(200),
        appBar: AppBar(
          title: Text(
            "Recipe Book",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red.shade700,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
            IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.search_normal_1_outline),
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            SearchScreen(),
            FavoriteScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.withAlpha(40),width: 1.1,)
            ),
            child: TabBar(
              labelColor: Colors.deepOrange,
              indicatorColor: Colors.deepOrange,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(CupertinoIcons.home),text: "Home",),
                Tab(icon: Icon(Iconsax.search_normal_1_outline),text: "Search",),
                Tab(icon: Icon(Icons.favorite_border),text: "Favorite",),
                Tab(icon: Icon(CupertinoIcons.person),text: "Profil",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
