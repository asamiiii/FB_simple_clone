import 'package:flutter/material.dart';

Widget fbLogo() => Container(
      height: 70,
      width: 70,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Image.asset(
          'assets/facebook.png',
          fit: BoxFit.fill,
          color: const Color.fromARGB(255, 59, 89, 153),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
    );



Widget textField(String? label, {bool securedText = false}) => TextField(
      obscureText: securedText,
      decoration: InputDecoration(
          hintText: '$label',
          hintStyle:
              const TextStyle(color: Color.fromARGB(255, 171, 186, 224))),
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );




Widget loginButton(var onPressed) => Container(
      width: 300,
      height: 50,
      color: const Color.fromARGB(255, 78, 104, 161),
      child: TextButton(
          onPressed: onPressed,
          child: const Text(
            'Login',
            style: TextStyle(color: Color.fromARGB(255, 171, 186, 224)),
          )),
    );




Widget bottomButtons(String label) => TextButton(
    onPressed: () {},
    child:  Text(
      label,
      style: const TextStyle(color: Color.fromARGB(255,226,246,255)),
    ));
