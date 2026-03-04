import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: CupertinoSearchTextField(
                onSubmitted: (_){
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Icon(EvaIcons.search,size: 100,color: Colors.grey.withAlpha(80),),
                    SizedBox(height: 20,),
                    Text("Search for your favorite recipes",style: TextStyle(color: Colors.grey.withAlpha(150),fontSize: 20),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
