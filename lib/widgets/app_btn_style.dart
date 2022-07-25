import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle LinkButton = ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
               foregroundColor: MaterialStateProperty.all(Colors.white),
               textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            );
  

}



abstract class AppColors {
  static const mainpDarkBlue =  Color.fromRGBO(3, 37, 65, 1);
}