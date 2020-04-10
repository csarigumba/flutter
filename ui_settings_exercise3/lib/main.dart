import 'package:flutter/material.dart';

void main() => runApp(SettingScreen());

class SettingScreen extends StatelessWidget {
  TextStyle _constructHeadingTextStyle() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 1);
  }

  Widget _constructDivider() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 1,
      color: Colors.grey.shade300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.redAccent),
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text('Settings'),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('ACCOUNT', style: _constructHeadingTextStyle()),
                SizedBox(height: 8.0),
                Card(
                  elevation: 0.5,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media-exp1.licdn.com/dms/image/C5103AQFfuwPJeP8oEQ/profile-displayphoto-shrink_200_200/0?e=1591833600&v=beta&t=Lgk5eeOcH1Lu-8UCU_P9sDkl-M8SLWZsbCs3MBAhMak"),
                        ),
                        title: Text('Cedric Sarigumba'),
                      ),
                      _constructDivider(),
                      SwitchListTile(
                        value: true,
                        activeColor: Colors.red,
                        title: Text('Private account'),
                        onChanged: (val) {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Text('PUSH NOTIFICATIONS', style: _constructHeadingTextStyle()),
                SizedBox(height: 8.0),
                Card(
                  elevation: 0.5,
                  child: Column(
                    children: <Widget>[
                      SwitchListTile(
                        value: true,
                        activeColor: Colors.red,
                        title: Text('Received notification'),
                        onChanged: (val) {},
                      ),
                      SwitchListTile(
                        value: false,
                        activeColor: Colors.red,
                        title: Text('Received newsletter'),
                        onChanged: (val) {},
                      ),
                      SwitchListTile(
                        value: true,
                        activeColor: Colors.red,
                        title: Text('Received offer notification'),
                        onChanged: (val) {},
                      ),
                      SwitchListTile(
                        value: false,
                        activeColor: Colors.red,
                        title: Text('Received updates'),
                        onChanged: (val) {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Card(
                  elevation: 0.5,
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
