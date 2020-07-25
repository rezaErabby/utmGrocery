import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static final String path = "lib/src/pages/settings/settings2.dart";
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(122, 207, 122, 1),
      ),
      backgroundColor: Colors.white,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.light,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Languages",
                    style: greyTExt,
                  ),
                  subtitle: Text(
                    "English US",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                SwitchListTile(
                  title: Text(
                    "Email Notifications",
                    style: greyTExt,
                  ),
                  subtitle: Text(
                    "On",
                    style: greyTExt,
                  ),
                  value: true,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  title: Text(
                    "Push Notifications",
                    style: greyTExt,
                  ),
                  subtitle: Text(
                    "Off",
                    style: greyTExt,
                  ),
                  value: false,
                  onChanged: (val) {
                    val = true;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
