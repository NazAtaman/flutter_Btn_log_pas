
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../movie_list/movie_list_widget.dart';


class MinsScreenWidget extends StatefulWidget {
  MinsScreenWidget({Key? key}) : super(key: key);

  @override
  State<MinsScreenWidget> createState() => _MinsScreenWidgetState();
}

class _MinsScreenWidgetState extends State<MinsScreenWidget> {
  int _SelectedTab = 0;

  static  List<Widget> _widgetOptions = [
    movieList(),
    Text('Movie'),
    Text('TV-show'),
  ];


  void onSelectedTab (int index) {
     if (_SelectedTab == index ) return;
    setState(() {
      _SelectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Center(child: _widgetOptions[_SelectedTab]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: "Home",
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: "Movie",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.tv),
             label: "TV-show ",
          ),
          ],
          onTap: onSelectedTab,
          ),
    );
  }
}