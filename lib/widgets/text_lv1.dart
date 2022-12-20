import 'package:flutter/cupertino.dart';

class TextLv1 extends Text {
  String data;

  TextLv1({super.key, required this.data})
      : super(
          data,
          style: const TextStyle(
              fontFamily: "One Piece",
              fontSize: 37,
              color: Color.fromARGB(255, 199, 16, 3)),
        );
}
