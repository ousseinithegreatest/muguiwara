import 'package:flutter/material.dart';

class Bar extends AppBar {
  Bar({
    super.key,
  }) : super(
            title: const Text(
              "Muguiwara",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "One Piece",
                  fontSize: 43,
                  fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.white,
            elevation: 3,
            centerTitle: true);
}
