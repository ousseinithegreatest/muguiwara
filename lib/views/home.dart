import 'package:flutter/material.dart';
import 'package:muguiwara/views/members.dart';
import 'package:muguiwara/widgets/app_bar.dart';
import 'package:muguiwara/widgets/simple_text.dart';
import 'package:muguiwara/widgets/text_lv1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Bar(),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "images/equipage.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                child: TextLv1(data: "L'Equipage au chapeau de paille"),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: SimpleText(
                    data:
                        "L'Équipage du Chapeau de Paille (麦わらの一味, Mugiwara no Ichimi) est un équipage pirate originaire d'East Blue, bien que leurs membres proviennent de différentes régions. Ils sont l'accent principal et les protagonistes de l'anime et du manga One Piece, et sont dirigés par le protagoniste principal, Monkey D. Luffy. Les \"Chapeaux de Paille\" se nomment ainsi d'après le Chapeau de Paille de Luffy, qui lui fut donné par Shanks le Roux, et sont d'abord appelés \"Pirates au Chapeau de Paille\" par Smoker à Alabasta. L'équipage naviguait sur le Vogue Merry, leur premier navire d'équipage pirate, jusqu'à l' Arc Water Seven. Après l'Arc Enies Lobby, ils reçurent un nouveau navire, le Thousand Sunny. L'équipage est composé actuellement de 10 membres dont la prime totale est de 8 816 001 000 Berrys. Les neuf membres ont été séparés les uns des autres. Durant deux ans, ils se sont entraînés dans des lieux relativement isolés, devenant plus fort dans le but de s'entraider. Ils se sont ensuite réunis et sont devenus une force active et massive dans le Nouveau Monde."),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.yellow.shade800,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Members()),
                  );
                },
                child: const Text(
                  "LES MEMBRES D'EQUIPAGE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // const Members()
            ]),
      ),
    );
  }
}
