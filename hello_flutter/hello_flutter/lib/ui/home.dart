import 'package:flutter/material.dart';

_tapButton() {
  debugPrint("Alarm");
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Scaffold"),
      centerTitle: true,
      backgroundColor: Colors.amberAccent.shade700,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.email),
          onPressed: () => debugPrint("Email"),
        ),
        IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapButton)
      ],
    ));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.orange,
        child: Center(
            child: Text("Hello Flutter",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23.4,
                    fontStyle: FontStyle.italic))));
  }
}
