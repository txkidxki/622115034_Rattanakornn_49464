import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("calculater application",
              style: TextStyle(
                  fontFamily: "playground", fontSize: 20, color: Colors.white)),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/racoon.jpg",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Calculate Program",
                    style: TextStyle(
                        fontFamily: "playground",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[700])),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Peanut butter amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[700], // background
                        onPrimary: Colors.white),
                    onPressed: () {},
                    child: Text("calculate",
                        style: TextStyle(
                            fontFamily: "playground",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            ))),
                SizedBox(
                  height: 20,
                ),
                Text("buy 2 get 1 raccoon free :D",
                    style: TextStyle(
                        fontFamily: "playground",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[700]))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
