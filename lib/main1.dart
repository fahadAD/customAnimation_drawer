import 'dart:async';

 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'main2.dart';
import 'main4.dart';
 class BottomNavigationScreen extends StatelessWidget {

   var pageIndex=0.obs;
    var drawerOn_Off=false.obs;

   final pages=[

     Container(color: Colors.teal,),
     Container(color: Colors.yellow,),
     Container(color: Colors.red,),
     Container(color: Colors.blue,),
   ];
   @override
   Widget build(BuildContext context) {

     return   Obx(() => AnimatedPositioned(
       duration: Duration(milliseconds: 300),
       top: drawerOn_Off.value==false?0:100,
       bottom: drawerOn_Off.value==false?0:100,
       left: drawerOn_Off.value==false?0:200,
       right: drawerOn_Off.value==false?0:-100,

       child: Container(

         child: Scaffold(
           appBar: AppBar(
             backgroundColor: Colors.white,
             elevation: 20,
             leading: drawerOn_Off.value==false?IconButton(onPressed: (){
                drawerOn_Off.value=true;
             }, icon: Icon(Icons.drag_indicator,color: Colors.black,)):IconButton(onPressed: (){
               drawerOn_Off.value=false;
             }, icon: Icon(Icons.close,color: Colors.black,)),
           ),
           body: pages[pageIndex.value],
           bottomNavigationBar: BottomNavigationBar(
               selectedItemColor: Colors.black,
               unselectedItemColor: Colors.grey,
               currentIndex: pageIndex.value,
               onTap: (value) {
                 pageIndex.value=value;
               },
               items: [
                 BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
                 BottomNavigationBarItem(icon: Icon(Icons.mark_as_unread),label: "Chat"),
                 BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark_outlined),label: "Book Mark"),
                 BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: "Profile"),

               ]),
         ),
       ),
     ));
   }
 }

