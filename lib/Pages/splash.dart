import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:utmgrocery/Pages/Animation/FadeAnimation.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlareActor("assets/New File 1.flr",
          alignment: Alignment.center,
          fit: BoxFit.contain,
          animation: "New File 1"),
      backgroundColor: Colors.green[300],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
            ),
            FadeAnimation(
              1.8,
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                          ),
                        ),
                        color: Color.fromRGBO(122, 207, 122, .9),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text("Register"),
                        color: Color.fromRGBO(122, 207, 122, .9),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
