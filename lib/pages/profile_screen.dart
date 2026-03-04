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
                  Divider(color: Colors.grey.withAlpha(60),),
                ],
              ),
            ),
          )
      )
    );
  }
}
