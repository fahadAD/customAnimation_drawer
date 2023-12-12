import 'package:flutter/material.dart';
 import 'package:practise2/main1.dart';

import 'main2.dart';

void main() async{
 //  WidgetsFlutterBinding.ensureInitialized();
 // Stripe.publishableKey='pk_test_qblFNYngBkEdjEZ16jxxoWSM';
   runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
   const MyApp({super.key});

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return   MaterialApp(
       home: Showing(),
     );
   }
 }
