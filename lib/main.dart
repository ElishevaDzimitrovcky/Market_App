import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/cart_model.dart';
import 'pages/intro_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}