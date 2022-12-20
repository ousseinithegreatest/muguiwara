import 'package:flutter/material.dart';
import 'package:muguiwara/data/datasource.dart';
import 'package:muguiwara/widgets/app_bar.dart';
import 'package:muguiwara/widgets/helper.dart';
import 'package:muguiwara/widgets/simple_text.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    final datas = DataSource().allMembers();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final member = datas[index];
          return InkWell(
            child: Card(
              elevation: 8,
              child: Container(
                height: size.height * 0.75,
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        member.getFolderPath(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SimpleText(data: member.name)
                  ],
                ),
              ),
            ),
            onTap: () {
              NavigatorHelper().toDetail(context: context, member: member);
            },
          );
        },
        itemCount: datas.length,
      ),
    );
  }
}
