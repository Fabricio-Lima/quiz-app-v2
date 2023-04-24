import 'package:flutter/material.dart';

//Decoration

InputDecoration formDecoration(String labelText, Icon iconData) {
  return InputDecoration(
      errorStyle: const TextStyle(
        fontSize: 10,
      ),
      prefix: Icon(
        iconData as IconData?,
        color: Colors.indigo,
      ),
      errorMaxLines: 3,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.grey),
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder);
}

//Border Input style

const enabledBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    borderSide: BorderSide(width: 1, color: Colors.indigoAccent));

const focusedBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(width: 2, color: Colors.indigoAccent));

const errorBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(width: 2, color: Colors.indigoAccent));

//Divider Box Constants

class SizedBoxH10 extends StatelessWidget {
  const SizedBoxH10({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class SizedBoxH20 extends StatelessWidget {
  const SizedBoxH20({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

class SizedBoxH30 extends StatelessWidget {
  const SizedBoxH30({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}

//Text styles

const TextStyle style16Indigo = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 16,
    color: Colors.indigo,
    fontWeight: FontWeight.w200);

const TextStyle style16White = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w200);

const TextStyle style16Black = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w200);

const TextStyle titleStyleIndigo = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 36,
    color: Colors.indigo,
    fontWeight: FontWeight.w300);
