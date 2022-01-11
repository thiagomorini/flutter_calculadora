import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String text;
  const Display(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromRGBO(50, 50, 50, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none,
                      fontSize: text.length > 8 ? 36 : 80,
                      color: Colors.white),
                  textAlign: TextAlign.end,
                )),
          ],
        ),
      ),
    );
  }
}
