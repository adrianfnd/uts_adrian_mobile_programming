import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Library of My Favorite Pictures',
        ),
      ),
      body: Center(
          child: GridView.extent(
              maxCrossAxisExtent: 300.0,
              padding: EdgeInsets.all(16),
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset('assets/images/library-image-1.jpg')
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset('assets/images/library-image-2.jpg')
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset('assets/images/library-image-3.jpg')
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset('assets/images/library-image-4.jpg')
                ),
              ]
          )
      ),
    );
  }
}