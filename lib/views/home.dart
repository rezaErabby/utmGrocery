import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:utmgrocery/bloc/CartBloc.dart';
import 'package:utmgrocery/components/CartManager.dart';
import 'package:utmgrocery/components/GridShop.dart';

class Home extends StatefulWidget {

  const Home({Key key, @required this.user}) : super(key: key);
  final FirebaseUser user;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showCart = false;
  CartBloc _cartBloc;

  ScrollController _scrollController = new ScrollController();

  @override
  initState() {
    _scrollController = new ScrollController();
    _cartBloc = new CartBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text('UTM Grocery'),
          centerTitle: true,
          backgroundColor: Colors.green[200],
        ),
        drawer: new Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SafeArea(
                child: DrawerHeader(
                  child: Text(
                    "UTM Grocery",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Profile"),
                onTap: () => Navigator.pushNamed(context, '/profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () => Navigator.pushNamed(context, '/settings'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => Navigator.pushNamed(context, '/login'),
              ),
            ],
          ),
        ),
        body: new Stack(children: <Widget>[
          new CustomScrollView(
              physics: NeverScrollableScrollPhysics(),
              controller: _scrollController,
              slivers: <Widget>[
                new SliverToBoxAdapter(child: new GridShop()),
                new SliverToBoxAdapter(child: new CartManager()),
              ]),
          new Align(
              alignment: Alignment.bottomRight,
              child: new Container(
                  margin: EdgeInsets.only(right: 10, bottom: 10),
                  child: new FloatingActionButton(
                      onPressed: () {
                        if (_showCart)
                          _scrollController.animateTo(
                              _scrollController.position.minScrollExtent,
                              curve: Curves.fastOutSlowIn,
                              duration: Duration(seconds: 2));
                        else
                          _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              curve: Curves.fastOutSlowIn,
                              duration: Duration(seconds: 2));

                        setState(() {
                          _showCart = !_showCart;
                        });
                      },
                      backgroundColor: Colors.green[300],
                      child: new Icon(
                          _showCart ? Icons.close : Icons.shopping_cart))))
        ]));
  }

  @override
  void dispose() {
    _cartBloc.dispose();
    super.dispose();
  }
}
