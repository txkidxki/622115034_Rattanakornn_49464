
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              Text("RTNK 5034"),
              Text("MAIN QIQI (QIQI IS THE BEST)"),
              Text("@GENSHIN IMPACT :)"),
            ],),
        )
      ],
    );
  }
}