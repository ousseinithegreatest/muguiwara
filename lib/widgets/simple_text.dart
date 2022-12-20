import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleText extends Text {
  String data;
  SimpleText({super.key, required this.data})
      : super(
          data,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 18, height: 1.5),
        );
}
