import 'package:flutter/material.dart';
/* import 'package:flutter_button/widgets/app_btn_style.dart';
import 'package:flutter_button/widgets/main_screen/main_screen_widget.dart';
import 'package:flutter_button/widgets/wid.dart'; */
import 'package:flutter_telegram/widgets/app_btn_style.dart';
import 'package:flutter_telegram/widgets/main_screen/main_screen_widget.dart';
import 'package:flutter_telegram/widgets/movie_details/example_movie_details.dart';
import 'package:flutter_telegram/widgets/movie_details/movie_details_widget.dart';
import 'package:flutter_telegram/widgets/wid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:AppColors.mainpDarkBlue,
        ),
        bottomNavigationBarTheme: 
        BottomNavigationBarThemeData(backgroundColor: AppColors.mainpDarkBlue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        ),
      ),
      title: 'Material App',
       routes: {
    '/': (context) => AuthWidget(),
    '/main screen': (context) =>  MinsScreenWidget(),
    '/main screen/movie_details': (context)  {
      final arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments is int){
        return MmovieDetailWidget(filmId: arguments,);
      }else {
        return MmovieDetailWidget(filmId: 0);
      }
      },

  },
      initialRoute: '/',
    );
  }
  
}