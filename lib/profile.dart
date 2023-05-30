import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'My Profile',
            ),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                  width: 0,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset('assets/images/profile-image-1.jpg', width: 175, height: 175),
                ),
                SizedBox(
                  height: 25.0,
                  width: 0,),
                Divider(
                  height: 20,
                  color: Colors.black,),
                ListTile(
                  leading: Icon(Icons.person,
                    color: Colors.black,
                    size: 25,),
                  title: Text('Muhammad Adrian Fernanda',
                    style:  TextStyle( fontSize: 13, color: Colors.black),),
                ),
                ListTile(
                  leading: Icon(Icons.assignment_ind,
                    color: Colors.black,
                    size: 20,),
                  title: Text('2042035',
                    style:  TextStyle( fontSize: 13, color: Colors.black),),
                ),
                ListTile(
                  leading: Icon(Icons.home,
                    color: Colors.black,
                    size: 20,),
                  title: Text('Jl.Guntur Sari II No.15',
                    style:  TextStyle( fontSize: 13, color: Colors.black),),
                ),
                ListTile(
                  leading: Icon(Icons.phone,
                    color: Colors.black,
                    size: 20,),
                  title: Text('081221809603',
                    style:  TextStyle( fontSize: 13, color: Colors.black),),
                ),
                ListTile(
                  leading: Icon(Icons.email,
                    color: Colors.black,
                    size: 20,),
                  title: Text('fernanda.adrian2@gmail.com',
                    style:  TextStyle( fontSize: 13, color: Colors.black),),
                ),
                ListTile(
                  leading: Icon(Icons.note,
                    color: Colors.black,
                    size: 20,),
                  title: Text('Pada saat SMP saya mengikuti organisasi basket, '
                      'setelah setahun saya mengikuti organisasi tersebut di dalamnya '
                      'saya mendapat banyak teman dan pengalaman berharga.',
                    style:  TextStyle( fontSize: 15, color: Colors.black),),
                ),
              ],
            ),
          )
      )
    ],);
  }
}