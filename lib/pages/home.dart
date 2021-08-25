import 'package:flutter/material.dart';

import 'about.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List c = [Colors.pink, Colors.red, Colors.green, Colors.yellow];

  var index = 0;
  var index2 = 3;

  @override
  Widget build(BuildContext context) {
    pasa(price: 200);
    return Scaffold(
      appBar: AppBar(
        title: Text('CHANGE COLOR'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'vaibhav chourasiya',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'vaibhavchourasiya@gmail.com',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              hoverColor: Colors.black54,
              focusColor: Theme.of(context).primaryColor,
              tileColor: Colors.black26,
            ),
            SizedBox(
              height: 5.0,
            ),
            ListTile(
              leading: Icon(Icons.play_circle),
              title: Text("PLAY"),
              hoverColor: Colors.black54,
              focusColor: Theme.of(context).primaryColor,
              tileColor: Colors.black26,
            ),
            SizedBox(
              height: 5.0,
            ),
            ListTile(
              leading: Icon(Icons.navigate_next),
              title: Text("ABOUT"),
              hoverColor: Colors.black54,
              focusColor: Theme.of(context).primaryColor,
              tileColor: Colors.black26,
              onTap: () {
                Navigator.pushReplacementNamed(context, "/nav");
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [c[index], c[index2]])),
        child: Container(
          margin: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )),
            onPressed: () {
              index2 -= 1;
              index += 1;
              if (index > 3) {
                index = 0;
              }
              if (index2 < 0) {
                index2 = 3;
              }
              setState(() {});
            },
            child: Text("Change Color"),
          ),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}

void pasa({price = 100}) {
  print("$price give me :");
}
