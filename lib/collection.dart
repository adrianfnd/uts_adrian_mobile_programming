import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Collection of My Favorite Songs',
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2.0, 5.0, 2.0, 5.0),
        children: <Widget>[
          FavoriteSong(
            songname:"Strawberries & Cigarettes by Troye Sivan",
            songdescription:
            "Troye Sivan awalnya menulis untuk Blue Neighbourhood, 'Strawberry & Cigarettes' berakhir di soundtrack "
                "untuk Love, Simon (2018). Lagu tersebut berasal dari sesi penulisan dengan kolaborator tetap "
                "Alex Hope dan produser Jack Antonoff.",
            albumart: 'images/collection-image-1.jpg',
          ),
          FavoriteSong(
            songname:"Dear No One by Tori Kelly",
            songdescription:
            "Dear No One adalah lagu kedua dari lima lagu di album Foreword yang di rilis oleh Tori Kelly. "
                "Tori menjelaskan bagaimana dia belum menemukan seseorang yang spesial; Namun, lagu ini didedikasikan "
                "untuk kekasihnya di masa depan ketika orang itu datang.",
            albumart: 'images/collection-image-2.jpg',
          ),
          FavoriteSong(
            songname:"Should've Been Us by Tori Kelly",
            songdescription:
            "Should've Been Us adalah singel radio ke-2 dari Unbreakable Smile karya Tori Kelly. "
                "Ini adalah lagu perpisahan yang dipengaruhi R&B 90-an di mana dia menyesali bagaimana "
                "jadinya dengan mantan kekasihnya jika mereka terus tumbuh sebagai pasangan.",
            albumart: 'images/collection-image-3.jpg',
          ),
          FavoriteSong(
            songname:"YOUTH by Troye Sivan",
            songdescription:
            "'Youth' adalah lagu dari album debut Troye Sivan, Blue Neighbourhood, yang dirilis pada "
                "4 Desember 2015. Meskipun lagu ini terutama menyajikan kisah cinta, YOUTH juga dapat mewakili "
                "lagu cinta Troye untuk para penggemarnya.",
            albumart: 'images/collection-image-4.jpg',
          ),
        ],
      ),
    );
  }
}
class FavoriteSong extends StatelessWidget{
  final String songname;
  final String songdescription;
  final String albumart;

  FavoriteSong({Key? key,
    required this.songname, required this.songdescription, required this.albumart}):
        super(key: key);

  Widget build (BuildContext context){
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/' + albumart),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(this.songname,
                    style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(this.songdescription,
                    style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 11),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}