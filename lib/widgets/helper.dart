import 'package:flutter/material.dart';
import 'package:muguiwara/models/member.dart';
import 'package:muguiwara/views/details.dart';

class NavigatorHelper {
  toDetail({required BuildContext context, required Member member}) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return Details(member: member);
      },
    ));
  }
}
