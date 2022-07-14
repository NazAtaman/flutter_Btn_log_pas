import 'package:flutter/material.dart';
import 'package:flutter_button/widgets/wid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:const  Color.fromRGBO(3, 37, 65, 1),
        ),
      ),
      title: 'Material App',
      home: AuthWidget(),
    );
  }
  
}