
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_telegram/widgets/wid.dart';

  class Film {
    final int id;
      final String ImageName;
      final String Title;
      final String Time;
      final String Descr;

  Film( {required this.id, required this.ImageName, required this.Title, required this.Time, required this.Descr});
    }




class movieList extends StatefulWidget {
   movieList({Key? key}) : super(key: key);

  @override
  State<movieList> createState() => _movieListState();
}

class _movieListState extends State<movieList> {
 final _Film = [
    Film(
      id: 1,
      ImageName: ('https://picsum.photos/id/237/200/300'), 
      Title: "Mortal Kombat", 
      Time: "January 13 1992", 
      Descr: "Movie about movie some text"),
       Film(
        id: 2,
      ImageName: ('https://picsum.photos/id/237/200/300'), 
      Title: "KOmbat", 
      Time: "January 13 1992", 
      Descr: "Movie about movie some text"),
         Film(
          id: 3,
      ImageName: ('https://picsum.photos/id/237/200/300'), 
      Title: "Gr9zb", 
      Time: "January 13 1992", 
      Descr: "Movie about movie some text"),
         Film(
          id: 4,
      ImageName: ('https://picsum.photos/id/237/200/300'), 
      Title: "Deadly", 
      Time: "January 13 1992", 
      Descr: "Movie about movie some text"),
         Film(
          id: 5,
      ImageName: ('https://picsum.photos/id/237/200/300'), 
      Title: "Focus incline", 
      Time: "January 13 1992", 
      Descr: "Movie about movie some text"),
      
      
 ];

  var _filterMovies = <Film> [];

  final _searchController = TextEditingController();

  @override

  void _searchMovies() {
    final query = _searchController.text;

    if(query.isNotEmpty){
      _filterMovies = _Film.where((Film film){
        return film.Title.toLowerCase().contains(query.toLowerCase());
      } ).toList();
    } else {
      _filterMovies = _Film;
    }
    setState(() {
      
    });
  }

  void initState() {
    super.initState();
    _searchMovies();
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap (int index ){
    final id = _Film[index].id;
    Navigator.of(context).pushNamed('/main screen/movie_details',
    arguments: id,);
  }

  @override
  Widget build(BuildContext context) {
    /* final imageTree = AssetImage('images/tree.jpg'); */
    final sconImg =  Icon(Icons.tv);
   return Stack(
     children: [
       ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.only(top: 65),
        itemCount: _filterMovies.length,
        itemExtent: 170,
        itemBuilder: (BuildContext context, int index) {
          final Film = _filterMovies[index];
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Stack(
              children: [
                Container(
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                      border: Border.all(color: Color.fromARGB(255, 213, 191, 191)),
                     boxShadow:[
                      BoxShadow(
                        color: Color.fromARGB(255, 214, 206, 230),
                         blurRadius: 8,
                        offset: Offset (0, 2),
                      )
                     ]
                    ),
                    child: Row(children: [
                      Image(image: NetworkImage(Film.ImageName)),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                          Text(Film.Title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(255, 25, 19, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                            SizedBox(height: 5),
                          Text(Film.Time,
                          style: TextStyle(
                            color: Color.fromARGB(255, 82, 76, 76),
                            fontWeight: FontWeight.bold,
                          )),
                          SizedBox(height: 10),
                          Text(Film.Descr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)
                        ],),
                      ),
                      SizedBox(width: 10),
                    ],),
                    
                  ),
                ),
                Material(
                  color: Colors.transparent,
                 
                  child: InkWell(
                    onTap: () => _onMovieTap(index) ,
                  ),
                )
              ],
            ),
          );
        
       }),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            labelText: "Search",
            labelStyle: TextStyle(
              color: Color.fromARGB(255, 7, 27, 176),
              fontSize: 15,
            ),
            filled: true,
            fillColor: Colors.white.withAlpha(200),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
         ),
       )
     ],
   );
  }
}

/* Git commited */
