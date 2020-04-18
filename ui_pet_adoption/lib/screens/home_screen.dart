import 'package:flutter/material.dart';
import 'package:ui_pet_adoption/models/pet_model.dart';
import 'package:ui_pet_adoption/screens/pet_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40, top: 40),
            alignment: Alignment.centerLeft,
            child: ClipOval(
              child: CircleAvatar(
                radius: 25,
                child: Image(image: AssetImage('assets/images/user.png')),
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              style: TextStyle(fontSize: 22, letterSpacing: 0.5),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                labelText: 'Location',
                labelStyle: TextStyle(fontSize: 20, color: Colors.black45),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Divider(),
          ),
          Container(
            padding: EdgeInsets.only(left: 40),
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    onPressed: () {
                      print('Search pressed.');
                    },
                    icon: Icon(Icons.search),
                    iconSize: 30,
                    color: Colors.black87,
                  ),
                ),
                _buildPetCategory(false, 'Cats'),
                _buildPetCategory(true, 'Dogs'),
                _buildPetCategory(false, 'Birds'),
                _buildPetCategory(false, 'Other'),
              ],
            ),
          ),
          SizedBox(height: 70),
          _buildPet(pet: pets[0]),
          SizedBox(height: 15),
          _buildPet(pet: pets[1]),
        ],
      ),
    );
  }

  Widget _buildPet({Pet pet}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PetScreen(pet: pet),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    pet.imageUrl,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pet.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(Icons.favorite_border, color: Colors.red),
                  ),
                ],
              ),
            ),
            Text(
              pet.description,
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPetCategory(bool isSelected, String category) {
    return GestureDetector(
      onTap: () => print('Selected $category'),
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 80.0,
        decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Color(0xFFF8F2F7),
          borderRadius: BorderRadius.circular(20.0),
          border: isSelected
              ? Border.all(
                  width: 8.0,
                  color: Color(0xFFFED8D3),
                )
              : null,
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

// Color(0xFFFED8D3)
