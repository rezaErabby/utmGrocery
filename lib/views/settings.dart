import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new StuffInTiles(listOfTiles[index]);
        },
        itemCount: listOfTiles.length,
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () => print("tap"),
          subtitle: new Text("Subtitle"),
          leading: new Text("Leading"),
          selected: true,
          trailing: new Text("trailing"),
          title: new Text(t.title));

    return new ExpansionTile(
      key: new PageStorageKey<int>(3),
      title: new Text(t.title),
      children: t.children.map(_buildTiles).toList(),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'Account Information',
    <MyTile>[
      new MyTile(
        'Dogs',
        <MyTile>[
          new MyTile('Coton de Tulear'),
          new MyTile('German Shepherd'),
          new MyTile('Poodle'),
        ],
      ),
      new MyTile('Cats'),
      new MyTile('Birds'),
    ],
  ),
  new MyTile(
    'Address Book',
    <MyTile>[
      new MyTile('Tesla'),
      new MyTile('Toyota'),
    ],
  ),
  new MyTile(
    'Privacy Protection',
    <MyTile>[
      new MyTile('Google'),
      new MyTile('Samsung'),
    ],
  ),
  new MyTile(
    'Policy',
    <MyTile>[
      new MyTile('Google'),
      new MyTile('Samsung'),
    ],
  ),
  new MyTile(
    'Help',
    <MyTile>[
      new MyTile('Google'),
      new MyTile('Samsung'),
    ],
  ),
];
