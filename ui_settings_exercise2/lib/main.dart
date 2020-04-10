import 'package:flutter/material.dart';

void main() => runApp(SettingScreen());

class SettingScreen extends StatelessWidget {
  TextStyle _mainTitleStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17);
  }

  TextStyle _mainSubtitleStyle() {
    return TextStyle(color: Colors.white54);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DefaultTextStyle(
          style: TextStyle(color: Colors.white),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/f4/f3/dd/f4f3dd7acfd64b16aa51027159a6f5e8.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Cedric Sarigumba',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Text('Nepal', style: _mainSubtitleStyle())
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 40.0),
                ListTile(
                  title: Text('Languages', style: _mainTitleStyle()),
                  subtitle: Text('English US', style: _mainSubtitleStyle()),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.white70, size: 18),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Profile settings', style: _mainTitleStyle()),
                  subtitle:
                      Text('Cedric Sarigumba', style: _mainSubtitleStyle()),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Colors.white70, size: 18),
                  onTap: () {},
                ),
                SwitchListTile(
                  value: true,
                  activeColor: Colors.blueAccent[700],
                  title: Text('Email notifications', style: _mainTitleStyle()),
                  subtitle: Text('On', style: _mainSubtitleStyle()),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  value: false,
                  activeColor: Colors.blueAccent[700],
                  title: Text('Push notifications', style: _mainTitleStyle()),
                  subtitle: Text('On', style: _mainSubtitleStyle()),
                  onChanged: (val) {},
                ),
                ListTile(
                  title: Text('Logout', style: _mainTitleStyle()),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
