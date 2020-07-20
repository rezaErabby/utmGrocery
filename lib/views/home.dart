import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('UTM Grocery'),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
