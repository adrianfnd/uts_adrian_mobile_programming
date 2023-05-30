import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhammad Adrian Fernanda (2040235)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageLogin extends StatelessWidget {
  final UsernameController = TextEditingController();
  final PasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  static String auth = "";
  static String welcome = "";
  static String username = "Adrian";
  static String password = "1234";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
        ),
      ),

      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/images/flutter-logo.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                //cek data field nya kosong
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    auth = "Guest";
                    return 'Please Input Username!';
                  }
                  else if(UsernameController.text != username){
                    auth = "Guest";
                    print(auth + " failed to login by inputing wrong username");
                    return 'Username doesnt exist!';
                  }
                  return null;
                },
                controller: UsernameController,
                decoration: InputDecoration(
                  hintText: 'Input Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    auth = "Guest";
                    return 'Please Input Password';
                  }
                  else if(PasswordController.text != password){
                    auth = "Guest";
                    print(auth + " failed to login by inputing wrong password");
                    return 'Wrong password!';
                  }
                  return null;
                },
                obscureText: true,
                controller: PasswordController,
                decoration: InputDecoration(
                  hintText: 'Input Password',
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      if(UsernameController.text != username){
                        auth = "Guest";
                        print(auth + " failed to login");
                      }
                      else if(PasswordController.text != password){
                        auth = "Guest";
                        print(auth + " failed to login");
                      }
                      else{
                        auth = "User";
                        welcome = "Welcome\n"+
                            username;
                        print(auth + " has been login");
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Home()));
                      }
                    }
                  },
                  child: Text('Login'),
                ),
                SizedBox(
                  width: 40.0,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  onPressed: (){
                    auth = "Guest";
                    welcome = "Welcome\n"+
                        auth+"\n";
                    print(auth + " has been login");
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  child: Text('Guest'),
                ),
                SizedBox(
                  height: 75.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
                "© Made by Muhammad Adrian Fernanda (2042035)"
            ),
          ],
        ),
      ),
    );
  }
}