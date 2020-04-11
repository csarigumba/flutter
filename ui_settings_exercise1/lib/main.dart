import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(SettingScreen());

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isNightMode;

  @override
  void initState() {
    _isNightMode = false;
    super.initState();
  }

  Brightness _getBrightness() {
    return _isNightMode == true ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Theme(
        isMaterialAppTheme: true,
        data: ThemeData(
          brightness: _getBrightness(),
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                  icon: Icon(FontAwesomeIcons.moon),
                  onPressed: () {
                    setState(() {
                      _isNightMode = !_isNightMode;
                    });
                  })
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 10.0,
                  color: Colors.purple,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media-exp1.licdn.com/dms/image/C5103AQFfuwPJeP8oEQ/profile-displayphoto-shrink_200_200/0?e=1591833600&v=beta&t=Lgk5eeOcH1Lu-8UCU_P9sDkl-M8SLWZsbCs3MBAhMak"),
                    ),
                    title: Text('Cedric Sarigumba',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text('Flutter Developer',
                        style: TextStyle(color: Colors.white70)),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(color: Colors.grey[300], width: 1.0)),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.lock, color: Colors.purple),
                        title: Text('Change password'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.language,
                            color: Colors.purple),
                        title: Text('Change layout'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.purple),
                        title: Text('Change location'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.0),
                Text('Notification settings',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 0.3)),
                SwitchListTile(
                  title: Text('Received notification'),
                  value: true,
                  activeColor: Colors.purple,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  title: Text('Received newsletter'),
                  value: false,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  title: Text('Received offer notification'),
                  value: true,
                  activeColor: Colors.purple,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  title: Text('Received app updates'),
                  value: false,
                  onChanged: (val) {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
