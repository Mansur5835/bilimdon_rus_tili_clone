import 'package:flutter/material.dart';

class Dars11Lugat extends StatefulWidget {
  const Dars11Lugat({Key? key}) : super(key: key);

  @override
  _Dars11LugatState createState() => _Dars11LugatState();
}

class _Dars11LugatState extends State<Dars11Lugat> {
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
              MyWord(word: "Высокый (visokiy) - Baland"),
              MyWord(word: "Повыше (povishe) - Balandroq"),
              MyWord(word: "Самый-высокый (amiy-visokiy) - \nEng-baland"),
              MyWord(word: "Длинный (dlinniy) - Uzun"),
              MyWord(word: "Сильный (silniy) - Kuchli"),
              MyWord(word: "Крепный (krepniy) - Qattiq"),
              MyWord(word: "Маленькый (malenkiy) - Kichkina"),
              MyWord(word: "Большой (bolshoy) - Katta"),
              MyWord(word: "Тяжёлый (tjoliy) - Og`ir"),
              MyWord(word: "Уважаемый (uvajayemiy) - Hutmatli"),
              MyWord(word: "Умный (umniy) - Aqlli"),
              MyWord(word: "Похожий (poxojiy) - O`xshash"),
              MyWord(word: "Хороший (xoroshiy) - Yaxshi"),
              MyWord(word: "Лудший (ludshiy) - Juda-yxshi"),
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
