/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'movie_details_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);
  final int movieId;
  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Tom Clancyss"),
      ),
      body: ListView(
        children: [
          MmovieDetailWidget(filmId: 0,),              /* ????????????????  */
        ],
      ),
    );
  }
} */