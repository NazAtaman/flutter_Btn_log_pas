import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MmoviedetailsMainWidget extends StatelessWidget {
  const MmoviedetailsMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: _MovieNameWidget(),
        ),
        _SummeryWidget(),
        _OverView(),
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://picsum.photos/id/237/200/300'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        top: 10,
        left: 10,
        bottom: 10,
        child: Image(image: NetworkImage('https://picsum.photos/150/150')),
             ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Cat and chayka',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
          ),
          TextSpan(
            text: '(2021)',
            style: TextStyle(
              fontSize: 20,
            )
          ),
        ]
      ),
    );
  }
}



class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    ColoredBox(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 15),
        child: Text('04/29/2021 (US) 1h 40m Action, Adventure, War, Thriller',
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}


class _OverView extends StatelessWidget {
  const _OverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Overview text',
        style: TextStyle(
          color: Colors.white,
        ),),
        Text('About movie description, about plot and something, About movie description, about plot and something, About movie description, about plot and something, About movie description, about plot and something',
        style: TextStyle(
          color: Colors.white,
        ),),
        Row(
          children: [
            Column(
              children: [
                Text('data'),
                Text('data'),
              ],
            )
          ],
        )
      ],
    );
  }
}