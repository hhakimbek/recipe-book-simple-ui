import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.zero)),
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepOrangeAccent.withAlpha(170),
                        Colors.deepOrange,
                      ]
                    )
                  ),
                  alignment: Alignment.center,
                  child: Text("JD",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Text("john@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black45),),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Divider(color: Colors.grey.withAlpha(60),),
            ListTile(
              title: Text("Home",style: TextStyle(fontWeight: FontWeight.w500),),
              leading: Icon(CupertinoIcons.home,),
              onTap: () {},
            ),
            ListTile(
              title: Text("Favorites",style: TextStyle(fontWeight: FontWeight.w500),),
              leading: Icon(Icons.favorite_border,),
              onTap: () {},
            ),
            ListTile(
              title: Text("Saved Recipes",style: TextStyle(fontWeight: FontWeight.w500),),
              leading: Icon(CupertinoIcons.bookmark,),
              onTap: () {},
            ),
            ListTile(
              title: Text("Profile Settings",style: TextStyle(fontWeight: FontWeight.w500),),
              leading: Icon(CupertinoIcons.person,),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
