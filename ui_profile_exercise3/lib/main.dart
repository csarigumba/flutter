import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var bgImg =
      "https://images.unsplash.com/photo-1511497584788-876760111969?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80";
  var ppImg =
      "https://media-exp1.licdn.com/dms/image/C5103AQFfuwPJeP8oEQ/profile-displayphoto-shrink_200_200/0?e=1591833600&v=beta&t=Lgk5eeOcH1Lu-8UCU_P9sDkl-M8SLWZsbCs3MBAhMak";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: bgImg,
                    placeholder: (ctx, url) => CircularProgressIndicator(),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.only(top: 200),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(ppImg),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 100),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Cedric Sarigumba'),
                                      ListTile(
                                        title: Text('Flutter developer'),
                                        subtitle: Text('United States'),
                                        contentPadding: EdgeInsets.all(0),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Text('285'),
                                          Text('Likes')
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Text('3025'),
                                          Text('Comments')
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Text('650'),
                                          Text('Favorites')
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('User information'),
                            Divider(),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.email),
                              title: Text('Email'),
                              subtitle: Text('cediesarigumba@gmail.com'),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.phone),
                              title: Text('Phone'),
                              subtitle: Text('+987 1234567890'),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.web),
                              title: Text('Email'),
                              subtitle: Text('cediesarigumba.com'),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.person),
                              title: Text('Email'),
                              subtitle: Text(
                                  'Dicta odio accusamus autem et ea possimus. Nihil eos voluptatem recusandae est ipsa quidem quaerat. Aut praesentium odit hic dolor perspiciatis ipsam aliquid expedita. At eos saepe occaecati. Autem dolor laboriosam illo ipsam odio. Id est non at tempore.'),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              leading: Icon(Icons.date_range),
                              title: Text('Joined date'),
                              subtitle: Text('12 April 2020'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
