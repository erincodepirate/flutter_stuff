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
        ),
        backgroundColor: Colors.redAccent.shade100,
        body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                      child: Text("tap me", style: TextStyle(fontSize: 23.4)),
                      onTap: () => debugPrint("yo dawg")),
                  CustomButton()
                ])));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final snackbar = SnackBar(content: Text("Sup dawg"));
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(8.0)),
            child: Text("blah")));
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
