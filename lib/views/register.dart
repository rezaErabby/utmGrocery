import 'package:flutter/material.dart';
import 'package:utmgrocery/services/auth.dart';

import 'package:utmgrocery/views/Animation/FadeAnimation.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // String _name, _email, _address, _phone, _username, _password;

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = "";

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background-green.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 260,
                      child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/fruit.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 500,
                      child: FadeAnimation(
                        1,
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/cum.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 200,
                      child: FadeAnimation(
                        1.3,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/mango.png'))),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 190,
                      width: 80,
                      height: 350,
                      child: FadeAnimation(
                        1.3,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/busket.png'))),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(
                        1.5,
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/mixveg.png'))),
                        ),
                      ),
                    ),
                    Positioned(
                      child: FadeAnimation(
                          1.6,
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Amatic SC',
                                ),
                              ),
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextFormField(
                                    validator: (input) {
                                      if (input.isEmpty) {
                                        return 'Provide an email';
                                      }
                                    },
                                    onChanged: (input) {
                                      setState(() {
                                        email = input;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextFormField(
                                    validator: (input) {
                                      if (input.length < 6) {
                                        return 'Longer password please';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    onChanged: (input) {
                                      setState(() {
                                        password = input;
                                      });
                                    },
                                    obscureText: true,
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        2,
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(122, 207, 122, 1),
                                Color.fromRGBO(122, 207, 122, .6),
                              ])),
                          child: Center(
                            child: FlatButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  dynamic result =
                                      await _auth.registerWithEmailAndPassword(
                                          email, password);
                                  Navigator.pushNamed(context, '/login');
                                  if (result == null) {
                                    setState(() {
                                      error = "Please provide a valid Email";
                                    });
                                  }
                                }
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FadeAnimation(
                        1.5,
                        Container(
                          child: Center(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 60,
                                ),
                                Text(
                                  "Already have an account ? ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(122, 207, 122, 1)),
                                ),
                                FlatButton.icon(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  icon: Icon(Icons.forward),
                                  label: Text('Login'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
