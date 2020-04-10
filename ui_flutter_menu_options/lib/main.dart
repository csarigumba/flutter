import 'dart:ffi';
import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:ui_flutter_menu_options/models/options_model.dart';

void main() => runApp(MenuOptionsScreen());

class MenuOptionsScreen extends StatefulWidget {
  @override
  _MenuOptionsScreenState createState() => _MenuOptionsScreenState();
}

class _MenuOptionsScreenState extends State<MenuOptionsScreen> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Menu options'),
          leading: FlatButton(
            onPressed: () => print('Back'),
            textColor: Colors.white,
            child: Icon(Icons.arrow_back),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => print("help"),
              child: Text(
                'HELP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: options.length + 2,
          itemBuilder: (ctx, idx) {
            if (idx == 0) {
              return SizedBox(height: 15.0);
            } else if (idx == options.length + 1) {
              return SizedBox(height: 100);
            }

            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: _selectedOption == idx - 1
                    ? Border.all(color: Colors.black26)
                    : null,
              ),
              child: ListTile(
                leading: options[idx - 1].icon,
                title: Text(
                  options[idx - 1].title,
                  style: TextStyle(
                    color:
                        _selectedOption == idx - 1 ? Colors.black : Colors.grey,
                  ),
                ),
                subtitle: Text(
                  options[idx - 1].subtitle,
                  style: TextStyle(
                    color:
                        _selectedOption == idx - 1 ? Colors.black : Colors.grey,
                  ),
                ),
                selected: _selectedOption == idx - 1,
                onTap: () {
                  setState(() {
                    _selectedOption = idx - 1;
                  });
                },
              ),
            );
          },
        ),
        bottomSheet: Container(
          width: double.infinity,
          height: 80,
          color: Color(0xFFF3F3F3),
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'SAVE & CONTINUE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                SizedBox(width: 5.0),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
