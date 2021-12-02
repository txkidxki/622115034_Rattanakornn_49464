import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {

  TextEditingController quantity = TextEditingController();
  TextEditingController result = TextEditingController();
  TextEditingController Peanutprice = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = "buy 2 get 3 raccoon free :D";
  }

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
                  controller: quantity,
                  decoration: InputDecoration(
                      labelText: "Peanut butter amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

                TextField(
                  controller: Peanutprice,
                  decoration: InputDecoration(
                      labelText: "Racoon amount",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                    onPressed: () {
                      var cal = double.parse(quantity.text) + double.parse(Peanutprice.text);
                      print("Peanut butter quantity: ${quantity.text} Total: ${cal} THB");

                      setState(() {
                        result.text = "total: ${cal} raccoon free :D";
                      });

                    },
                    child: Text("calculate"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xffb74093)),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50, 20, 50, 20)),
                        textStyle: MaterialStateProperty.all((TextStyle(fontSize: 30))),
                        ),
                        ),
                

                SizedBox(
                  height: 20,
                ),
                Text(result.text,
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