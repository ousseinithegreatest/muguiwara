import 'package:flutter/material.dart';
import 'package:muguiwara/models/member.dart';
import 'package:muguiwara/widgets/app_bar.dart';
import 'package:muguiwara/widgets/simple_text.dart';
import 'package:muguiwara/widgets/text_lv1.dart';

class Details extends StatelessWidget {
  Member member;
  Details({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Bar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                member.getFolderPath(),
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: SimpleText(data: member.introduction),
              ),
              TextLv1(data: "INFORMATIONS"),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nom",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      "Nom en japonais 🇯🇵 ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SimpleText(data: member.name),
                    SimpleText(data: member.nameInJapanese),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Prime",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Center(
                child: SimpleText(data: "${member.prime} ฿"),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}
