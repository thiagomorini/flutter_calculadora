import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const lightButton = Color.fromRGBO(165, 165, 165, 1);
  static const defaultButton = Color.fromRGBO(51, 51, 51, 1);
  static const operationButton = Color.fromRGBO(255, 158, 11, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) onPressed;

  const Button(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = defaultButton,
      required this.onPressed})
      : super(key: key);

  const Button.big(
      {Key? key,
      required this.text,
      this.big = true,
      this.color = defaultButton,
      required this.onPressed})
      : super(key: key);

  const Button.operation(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = operationButton,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  side: const BorderSide(width: 6),
                  borderRadius: BorderRadius.circular(50.0))),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () => onPressed(text),
      ),
    );
  }
}
