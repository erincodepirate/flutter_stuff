import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
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
