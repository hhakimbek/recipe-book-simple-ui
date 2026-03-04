import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withAlpha(30),
            offset: Offset(0, 1),
            blurRadius: 5,
            spreadRadius: 0
          )
        ],
        borderRadius: BorderRadius.circular(15)
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/food.png",fit: BoxFit.cover,height: 100,),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text("Creamy Pasta Carbona",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Text("Dinner",style: TextStyle(color: Colors.grey),),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(CupertinoIcons.time,color: Colors.grey,size: 16,),
                          SizedBox(width: 5,),
                          Text("25 minute",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: 16,),
                          Text("4.6",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}
