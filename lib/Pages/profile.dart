import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(122, 207, 122, 1),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Container(
              height: 320,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(122, 207, 122, 1),
                  Color.fromRGBO(122, 207, 122, .6),
                ]),
              ),
              child: Stack(children: <Widget>[
                Positioned(
                  left: 140,
                  top: 40,
                  child: Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/mark.jfif'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(80.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 10.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 85,
                  child: Container(
                    margin: EdgeInsets.only(top: 170),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 23.0),
                        child: Text(
                          "Mark Zukerburg",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 250,
                    left: 135,
                    child: Container(
                        child: Center(
                            child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.orange[200],
                      ),
                      label: Text('Notifications'),
                    )))),
              ]),
            ),
            SafeArea(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                      elevation: 1.0,
                      margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Name',
                        ),
                      )),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Email',
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Username',
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Address',
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Phone Number',
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      title: Text(
                        'My Orders',
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                      ),
                      title: Text(
                        'My Delivery',
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1.0,
                    margin: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: ListTile(
                      leading: Icon(Icons.location_on, color: Colors.black),
                      title: Text("My Location"),
                      trailing: Switch(
                          activeColor: Colors.green,
                          value: true,
                          onChanged: (val) {}),
                    ),
                  ),
                ],
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
