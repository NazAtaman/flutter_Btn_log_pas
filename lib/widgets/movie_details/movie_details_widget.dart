import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_telegram/widgets/movie_details/movie_details_main_info.dart';

class MmovieDetailWidget extends StatefulWidget {
  final int filmId;
  MmovieDetailWidget({Key? key, required this.filmId}) : super(key: key);

  @override
  State<MmovieDetailWidget> createState() => _MmovieDetailWidgetState();
}

class _MmovieDetailWidgetState extends State<MmovieDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text("Descr about movie"),
      ),
      body: ColoredBox(
        color: Color.fromRGBO(24, 23, 27, 0.8),
        child: ListView(
          children: const [
            MmoviedetailsMainWidget(),
          ],
        ),
      ),
    );
  }
}


