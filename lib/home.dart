import 'package:flutter/material.dart';

import 'main.dart';
import 'collection.dart';
import 'profile.dart';
import 'diary.dart';
import 'library.dart';

class Home extends StatelessWidget {
  String Auth = PageLogin.auth;
  String Username = PageLogin.username;
  String Welcome = PageLogin.welcome;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
            'Home'
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(4, 9, 35, 1),
                  Color.fromRGBO(39, 105, 171, 1),
                ],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 150,
                      child: Text(Welcome, style: TextStyle(color: Colors.white, fontSize: 42),textAlign: TextAlign.center
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: new MaterialButton(
                          height: 50.0,
                          minWidth: 300.0,
                          color: Colors.white,
                          textColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new Text("Profile",style:  TextStyle(fontSize: 18),),
                          onPressed: () => {
                            if(Auth == "User"){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => Profile()))
                            }
                            else{
                              print(Auth + " trying to access profile page!")
                            }
                          },
                          splashColor: Colors.lightBlueAccent,
                        )),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: new MaterialButton(
                          height: 50.0,
                          minWidth: 300.0,
                          color: Colors.white,
                          textColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new Text("Collection",style:  TextStyle(fontSize: 18),),
                          onPressed: () => {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Collection()),
                            )
                          },
                          splashColor: Colors.blue,
                        )),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: new MaterialButton(
                          height: 50.0,
                          minWidth: 300.0,
                          color: Colors.white,
                          textColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new Text("Diary",style:  TextStyle(fontSize: 18),),
                          onPressed: () => {
                            if(Auth == "User"){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => Diary()))
                            }
                            else{
                              print(Auth + " trying to access diary page!")
                            }
                          },
                          splashColor: Colors.blue,
                        )),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: new MaterialButton(
                          height: 50.0,
                          minWidth: 300.0,
                          color: Colors.white,
                          textColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new Text("Library",style:  TextStyle(fontSize: 18),),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Library()),
                            )
                          },
                          splashColor: Colors.blue,
                        )),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}