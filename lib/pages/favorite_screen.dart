import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Icon(Icons.favorite_border,size: 100,color: Colors.grey.withAlpha(80),),
            SizedBox(height: 10,),
            Text("No favorites yet",style: TextStyle(color: Colors.grey.withAlpha(200),fontSize: 21,),),
            SizedBox(height: 10,),
            Text("Start adding recipes to your favorites",style: TextStyle(color: Colors.grey.withAlpha(150),fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
