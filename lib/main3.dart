import 'package:flutter/material.dart';
class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.lime,
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:60,),
            Text("Shelter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Travel Agency",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.support_agent),
              title: Text("Support"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.fact_check_rounded),
              title: Text("FAQ"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text("About us"),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("How to use"),
            ),
            SizedBox(height: 10,),
            Expanded(child: SizedBox(), ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],
        ),
      ) ,
    );
  }
}

