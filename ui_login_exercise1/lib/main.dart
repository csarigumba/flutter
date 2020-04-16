import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_login_exercise1/utils/helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'OpenSans')),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool rememberMe = false;

  Container _buildEmailTextField() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Email', style: labelTextStyle),
          SizedBox(height: 8),
          Container(
            decoration: textFieldStyle,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.white70),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.white30),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }

  Container _buildPasswordTextField() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Password', style: labelTextStyle),
          SizedBox(height: 8),
          Container(
            decoration: textFieldStyle,
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key, color: Colors.white70),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white30),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () => {},
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.right,
                style: labelTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRememberMe() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: rememberMe,
            checkColor: Colors.green,
            activeColor: Colors.white,
            onChanged: (bool value) {
              setState(() {
                rememberMe = !rememberMe;
              });
            },
          ),
        ),
        SizedBox(width: 5),
        Text('Remember me', style: labelTextStyle),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[200], Colors.blue[700]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 50),
                  _buildEmailTextField(),
                  SizedBox(height: 20),
                  _buildPasswordTextField(),
                  _buildRememberMe(),
                  SizedBox(height: 20),
                  _buildLoginBtn(),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      '- OR -',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Sign in with',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildSocialMediaBtn(),
                  SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Sign up",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildSocialMediaBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: new Offset(1, 2),
                    blurRadius: 5,
                  )
                ],
                image: DecorationImage(
                  image: AssetImage('assets/logos/facebook.jpg'),
                )),
          ),
        ),
        SizedBox(width: 15),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: new Offset(1, 2),
                    blurRadius: 5,
                  )
                ],
                image: DecorationImage(
                  image: AssetImage('assets/logos/google.jpg'),
                )),
          ),
        ),
      ],
    );
  }

  Container _buildLoginBtn() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: new Offset(1, 2),
              blurRadius: 5,
            )
          ]),
      child: Center(
          child: Text(
        'LOGIN',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
      )),
    );
  }
}
