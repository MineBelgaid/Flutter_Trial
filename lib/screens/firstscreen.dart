// ignore_for_file: prefer_const_constructors, unnecessary_new,prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:microclub_homework/screens/info_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final places = [
    {
      "name": "Sea Ameya Villas",
      "location": "Osaka Street,Japan",
      "image": "assets/background2.jpg",
      "rating": 4.5,
      "time": 10,
      "distance": 120,
      "price": 200,
    },
    {
      "name": "Sea Ameya Villas",
      "location": "Osaka Street,Japan",
      "image": "assets/background2.jpg",
      "rating": 4.5,
      "time": 10,
      "distance": 120,
      "price": 200,
    },
    {
      "name": "Sea Ameya Villas",
      "location": "Osaka Street,Japan",
      "image": "assets/background2.jpg",
      "rating": 4.5,
      "time": 10,
      "distance": 120,
      "price": 200,
    },
    {
      "name": "Sea Ameya Villas",
      "location": "Osaka Street,Japan",
      "image": "assets/background2.jpg",
      "rating": 4.5,
      "time": 10,
      "distance": 120,
      "price": 200,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
              color: Colors.blue,
              splashColor: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.navigation),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  // foregroundColor: Colors.blue,
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/background.jpg",
                        ),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Hi Amine!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Where would \nyou like to visit?",
                style: TextStyle(
                    wordSpacing: 1,
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
                // textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Places",
                        icon: Icon(Icons.search),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 10))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 10))
                    ],
                  ),
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var place in places)
                    PlaceCard(
                        name: place["name"] as String,
                        location: place["location"] as String,
                        image: place["image"] as String,
                        rating: place["rating"] as double,
                        time: place["time"] as int,
                        distance: place["distance"] as int,
                        price: place["price"] as int),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String _name, _location, _image;
  final double _rating;
  final int _time, _distance, _price;
  const PlaceCard({
    Key? key,
    required String name,
    required String location,
    required String image,
    required double rating,
    required int time,
    required int distance,
    required int price,
  })  : _name = name,
        _location = location,
        _image = image,
        _rating = rating,
        _time = time,
        _distance = distance,
        _price = price,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoScreen(
              name: _name,
              location: _location,
              image: _image,
              rating: _rating,
              time: _time,
              distance: _distance,
              price: _price,
            ),
          ),
        );
      },
      child: Container(
        height: 400,
        width: 300,
        margin: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, 10))
          ],
          image: DecorationImage(image: AssetImage(_image), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                width: 280,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        _name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_location,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
