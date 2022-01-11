import 'package:flutter/material.dart';

import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onPressed;

  const Keyboard(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'AC',
                      color: Button.lightButton,
                      onPressed: onPressed),
                  Button(
                      text: '+/-',
                      color: Button.lightButton,
                      onPressed: onPressed),
                  Button(
                      text: '%',
                      color: Button.lightButton,
                      onPressed: onPressed),
                  Button.operation(text: '÷', onPressed: onPressed)
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(text: '7', onPressed: onPressed),
                  Button(text: '8', onPressed: onPressed),
                  Button(text: '9', onPressed: onPressed),
                  Button.operation(text: 'x', onPressed: onPressed),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(text: '4', onPressed: onPressed),
                  Button(text: '5', onPressed: onPressed),
                  Button(text: '6', onPressed: onPressed),
                  Button.operation(text: '-', onPressed: onPressed),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(text: '1', onPressed: onPressed),
                  Button(text: '2', onPressed: onPressed),
                  Button(text: '3', onPressed: onPressed),
                  Button.operation(text: '+', onPressed: onPressed),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button.big(text: '0', onPressed: onPressed),
                  Button(text: '.', onPressed: onPressed),
                  Button.operation(text: '=', onPressed: onPressed),
                ],
              ))
        ],
      ),
    );
  }
}
