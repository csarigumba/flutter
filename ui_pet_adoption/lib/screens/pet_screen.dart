import 'package:flutter/material.dart';
import 'package:ui_pet_adoption/models/pet_model.dart';

class PetScreen extends StatelessWidget {
  Pet pet;

  PetScreen({this.pet});

  @override
  Widget build(BuildContext context) {
    print(pet);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _builldBanner(context),
            _buildPetTitle(),
            _buildPetDetails(),
            SizedBox(height: 20),
            _buildOwner(),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                owner.bio,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(Icons.share, color: Colors.black87),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: FlatButton.icon(
                      padding: EdgeInsets.all(
                        20.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        print("Adopt");
                      },
                      icon: Icon(
                        Icons.pets,
                        color: Colors.white,
                      ),
                      label: Text(
                        'ADOPTION',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildOwner() {
    return Container(
      alignment: Alignment.center,
      height: 90,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Color(0xFFFFF2D0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: ClipOval(
            child: Image(
              image: AssetImage(owner.imageUrl),
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
        ),
        title: Text(
          owner.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Owner', style: TextStyle(color: Colors.red)),
        trailing: Text(
          '1.68 km',
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Container _buildPetDetails() {
    return Container(
      padding: EdgeInsets.only(left: 30),
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildPetInfo('Age', pet.age.toString()),
          _buildPetInfo('Sex', pet.sex),
          _buildPetInfo('Color', pet.color),
          _buildPetInfo('Id', pet.id.toString()),
        ],
      ),
    );
  }

  Padding _buildPetTitle() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                pet.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.red,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              pet.description,
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),
          )
        ],
      ),
    );
  }

  Stack _builldBanner(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          pet.imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 275,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 80),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPetInfo(String label, String value) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 80.0,
      decoration: BoxDecoration(
        color: Color(0xFFF8F2F7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
