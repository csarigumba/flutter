import 'package:cached_network_image/cached_network_image.dart';
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
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var ppImg =
      "https://media-exp1.licdn.com/dms/image/C5103AQFfuwPJeP8oEQ/profile-displayphoto-shrink_200_200/0?e=1591833600&v=beta&t=Lgk5eeOcH1Lu-8UCU_P9sDkl-M8SLWZsbCs3MBAhMak";

  final List<Map> collections = [
    {"title": "Food joint", "img": "https://picsum.photos/id/100/2500/1656"},
    {"title": "Photos", "img": "https://picsum.photos/id/1001/367/267"},
    {"title": "Travel joint", "img": "https://picsum.photos/id/1003/367/267"},
    {"title": "Canada", "img": "https://picsum.photos/id/1005/367/267"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: <Widget>[
          _buildBanner(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildProfileHeader(),
                SizedBox(height: 15.0),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Collection',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500)),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text('Create new',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue[300])),
                          )
                        ],
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: collections.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, idx) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                                height: 150,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: CachedNetworkImage(
                                          imageUrl: collections[idx]['img'],
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              CircularProgressIndicator(
                                                  value: downloadProgress
                                                      .progress),
                                          errorWidget: (context, url, error) =>
                                              Icon(Icons.error),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(collections[idx]['title']),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(height: 30),
                      _buildLikePosts(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildLikePosts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Most liked posts',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.network(
                "https://images.unsplash.com/photo-1441974231531-c6227db76b6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.network(
                "https://images.unsplash.com/photo-1501854140801-50d01698950b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.network(
                "https://images.unsplash.com/photo-1465146344425-f00d5f5c8f07?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }

  Container _buildBanner() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.blue[300], Colors.blue[800]])),
    );
  }

  Container _buildProfileHeader() {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 35),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        elevation: 5.0,
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Column(
                            children: <Widget>[
                              Text('Cedric Sarigumba',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 5),
                              Text(
                                'UI/UX Designer | AWS Certified | United States',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(height: 25),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          '302',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        subtitle: Text(
                                          'POSTS',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        contentPadding: EdgeInsets.all(0),
                                        title: Text('10.3K',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        subtitle: Text('FOLLOWERS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12)),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: Text('120',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        subtitle: Text('FOLLOWING',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 12)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  elevation: 5,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(ppImg),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
