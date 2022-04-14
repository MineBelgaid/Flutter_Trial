// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers ,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:microclub_homework/screens/firstscreen.dart';

class InfoScreen extends StatelessWidget {
  final String _name, _location, _image;
  final double _rating;
  final int _time, _distance, _price;
  const InfoScreen({
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.cyan,
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(_image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    _name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Text(_rating.toString()),
                      SizedBox(width: 10),
                      Icon(
                        Icons.timer,
                        color: Colors.blue,
                      ),
                      Text(_time.toString() + " Hrs"),
                      SizedBox(width: 10),
                      Icon(
                        Icons.pin_drop,
                        color: Colors.blue,
                      ),
                      Text(_distance.toString() + " Km"),
                      SizedBox(width: 80),
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "lorem ipsum dolor sit ametconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                        wordSpacing: 1),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                          ),
                          Text("\$" + _price.toString(),
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                        child: Text("Book Now"),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            
          ]),
        ),
      ),
    );
  }
}
