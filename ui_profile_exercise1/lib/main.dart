import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var profileImg =
      "https://media-exp1.licdn.com/dms/image/C5103AQFfuwPJeP8oEQ/profile-displayphoto-shrink_200_200/0?e=1591833600&v=beta&t=Lgk5eeOcH1Lu-8UCU_P9sDkl-M8SLWZsbCs3MBAhMak";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.deepOrange,
          title: Text('View profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Colors.deepOrange[300],
                  ]),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.deepOrange[700],
                          child: Icon(Icons.call, size: 30),
                          minRadius: 30,
                        ),
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.deepOrange[400],
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(profileImg),
                            radius: 50,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.deepOrange[700],
                          child: Icon(Icons.message, size: 30),
                          minRadius: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Cedric Sarigumba',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20)),
                    Text('Flutter developer',
                        style: TextStyle(
                            color: Colors.deepOrange[900],
                            fontWeight: FontWeight.w400,
                            fontSize: 15))
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.deepOrange[300],
                      child: ListTile(
                        title: Text('50895',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle:
                            Text('FOLLOWERS', textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: ListTile(
                        title: Text('50895',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle:
                            Text('FOLLOWING', textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w300),
                ),
                subtitle: Text(
                  'cedric.sarigumba@gmail.com',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              _buildDivider(),
              ListTile(
                title: Text(
                  'Phone',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w300),
                ),
                subtitle: Text(
                  '+987 1234567890',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              _buildDivider(),
              ListTile(
                title: Text(
                  'Twitter',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w300),
                ),
                subtitle: Text(
                  'theflutterdev@twitter',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              _buildDivider(),
              ListTile(
                title: Text(
                  'Facebook',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w300),
                ),
                subtitle: Text(
                  'facebook.com/flutterdev',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      width: 350,
      child: Divider(thickness: 1),
    );
  }
}
