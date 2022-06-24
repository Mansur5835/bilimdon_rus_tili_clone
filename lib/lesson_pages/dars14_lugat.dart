import 'package:flutter/material.dart';

class Dars14Lugat extends StatefulWidget {
  const Dars14Lugat({Key? key}) : super(key: key);

  @override
  _Dars14LugatState createState() => _Dars14LugatState();
}

class _Dars14LugatState extends State<Dars14Lugat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Bilimdon - Rus Tili"),
          elevation: 1,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: ListView(children: [
              const SizedBox(height: 10),
              MyWord(word: "Согласен (sonlasen) - Roziman"),
              MyWord(word: "Не-делал (ne-delal) - Qilmagan"),
              MyWord(word: "Не-нужно (ne-nujno) - Keraksiz"),
              MyWord(word: "Последний-раз (posledniy raz) - \nOxirgi-marta"),
              MyWord(word: "Перед (pered) - Oldin"),
              MyWord(word: "Не-знал (ne-znal) - Bilmasdim"),
              MyWord(word: "Ничего (nichego) - Xech-narsa"),
              MyWord(word: "К-сожалению (k-sojaleniyu) - \nAfsuski"),
              MyWord(word: "С-кем (s-kem) - Kim-bilan"),
              MyWord(word: "Это-комната? (eto-komnata) - \nBu-xonami?"),
              MyWord(word: "Кто-он? (kto-on) - Kim-u(erkak)"),
              MyWord(word: "Кто-она? (kto-ona) - Kim-u(ayol)"),
              MyWord(word: "Кто-ты? (kto-ti) - Kim-san?"),
              MyWord(word: "Кто-вы? (kto-vi) - Kim-siz?"),
            ]),
          ),
        ),
      ),
    );
  }
}

class MyWord extends StatelessWidget {
  String word;
  MyWord({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: 20,
          ),
          Text(
            word,
            style: TextStyle(fontSize: 18),
          ),
        ]),
        Container(
          margin: EdgeInsets.all(10),
          height: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
