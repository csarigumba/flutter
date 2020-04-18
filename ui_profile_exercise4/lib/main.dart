import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Montserrat'),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String exp =
      "Over 8+ years of experience and web development and 5+ years of experience in mobile applications development.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.message, color: Colors.grey[500]),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.grey[500]),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            _buildProfileHeader(),
            _buildProfileIntro(),
            _buildSkillsSection(),
            _buildExperienceSection(),
            _buildEducationSection(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('CONTACT',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                  Divider(),
                  Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text('cediesarigumba@gmail.com'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('+977 1234567890'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildEducationSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('EDUCATION',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: <Widget>[
                _buildTileRow(
                    title: "Tribhuvan University, Nepal",
                    subtitle:
                        'Computer Science and Information Technology (2011 - 2015)'),
                _buildTileRow(
                    title: "Cambridge University, UK",
                    subtitle: "A Level (2008 - 2010)"),
                _buildTileRow(title: "Nepal Board", subtitle: "SLC (2008)"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildExperienceSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('EXPERIENCE',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: <Widget>[
                _buildTileRow(
                    title: 'GID Nepal',
                    subtitle: 'Wordpress developer (2010 - 2012)'),
                _buildTileRow(
                    title: 'Lohani Tech',
                    subtitle: 'Laravel developer (2012 - 2015)'),
                _buildTileRow(
                    title: 'Popup Bits Pvt. Ltd.',
                    subtitle: 'Web developer (2015 - 2018)'),
                _buildTileRow(
                    title: 'Popup Bits Pvt. Ltd.',
                    subtitle: 'Flutter developer (2018 - Current)'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTileRow({String title, String subtitle}) {
    return ListTile(
      leading: Icon(Icons.panorama_fish_eye),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
    );
  }

  Widget _buildSkillsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('SKILLS',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: <Widget>[
                _buildSkillRow('java', 0.98),
                _buildSkillRow('aws', 0.95),
                _buildSkillRow('flutter', 0.76),
                _buildSkillRow('database', 0.74),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _buildSkillRow(String skill, double value) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 15),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: value,
          ),
        ),
      ],
    );
  }

  Padding _buildProfileIntro() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(exp,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.grey[500],
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C5103AQFfuwPJeP8oEQ/profile-displayphoto-shrink_200_200/0?e=1591833600&v=beta&t=Lgk5eeOcH1Lu-8UCU_P9sDkl-M8SLWZsbCs3MBAhMak'),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Cedric Sarigumba',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
              SizedBox(height: 10),
              Text('Full Stack Developer',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
              SizedBox(height: 3),
              Row(
                children: <Widget>[
                  Icon(Icons.map, color: Colors.grey[500]),
                  SizedBox(width: 8.0),
                  Text('New York, NY',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Colors.black54)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
