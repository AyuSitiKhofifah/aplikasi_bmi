import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text(" My Profile"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              TextName(),
              TextWeb(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("images/foto.jpg"),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Ayu siti Khofifah",
        style: TextStyle(
            color: Colors.pink[200], fontSize: 28, fontWeight: FontWeight.bold),
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class TextWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "ayu.siti@undiksha.ac.id",
        style: TextStyle(
          color: Colors.pink[200],
          fontSize: 19,
        ),
      ),
    );
  }
}

class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 130,
          margin: const EdgeInsets.only(top: 30),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(Icons.school, size: 50, color: Colors.pink[200]),
                  Text(
                    "Undiksha",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 130,
          margin: const EdgeInsets.only(top: 30),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.location_city,
                    size: 50,
                    color: Colors.pink[200],
                  ),
                  Text(
                    "Bangli",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 130,
          margin: const EdgeInsets.only(top: 30),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.fastfood,
                    size: 50,
                    color: Colors.pink[200],
                  ),
                  Text(
                    "Seafood",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 130,
          margin: const EdgeInsets.only(top: 30),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 50,
                    color: Colors.pink[200],
                  ),
                  Text(
                    "All Genre",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
