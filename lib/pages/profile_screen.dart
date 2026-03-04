import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
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
                  Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  Text("john@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black45.withAlpha(100),fontSize: 17),),
                  SizedBox(height: 20,),
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(vertical: 15,horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('My Recipes',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            Icon(Icons.keyboard_arrow_right,color: Colors.grey,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(vertical: 15,horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Settings',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            Icon(Icons.keyboard_arrow_right,color: Colors.grey,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(vertical: 15,horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Help & Support',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            Icon(Icons.keyboard_arrow_right,color: Colors.grey,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      )
    );
  }
}
