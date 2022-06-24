import 'package:flutter/material.dart';

class Dars15Lugat extends StatefulWidget {
  const Dars15Lugat({Key? key}) : super(key: key);

  @override
  _Dars15LugatState createState() => _Dars15LugatState();
}

class _Dars15LugatState extends State<Dars15Lugat> {
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
              MyWord(word: "Читать (chitat) - Yozish"),
              MyWord(word: "Работать (rabotat) - Ishlash"),
              MyWord(word: "Спать (spat) - Uxlash"),
              MyWord(word: "Понимать (ponimat) - Tushinmoq"),
              MyWord(word: "Заниматься (zanimatsya) - \nShug`ullanish"),
              MyWord(word: "Видеть (videt) - Ko`rish"),
              MyWord(word: "Писать (pisat) - Yozish"),
              MyWord(word: "Обедать (obedat) - Tushlik-qilish"),
              MyWord(word: "Играть (igrat) - O`ynash"),
              MyWord(word: "Думать (dumat) - O`ylash"),
              MyWord(word: "Покупать (pokupat) - Sotib-olish"),
              MyWord(word: "Продавать (prodavat) - Sotish"),
              MyWord(word: "Получать (poluchat) - Olish"),
              MyWord(word: "Гореть (goret) - Yonish"),
              MyWord(word: "Слушать (slushat) - Eshitish"),
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
