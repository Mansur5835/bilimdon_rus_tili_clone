import 'package:flutter/material.dart';

class Dars8Lugat extends StatefulWidget {
  const Dars8Lugat({Key? key}) : super(key: key);

  @override
  _Dars8LugatState createState() => _Dars8LugatState();
}

class _Dars8LugatState extends State<Dars8Lugat> {
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
              MyWord(word: "Понедельник (ponedelnik) - Dushanba"),
              MyWord(word: "Вторник (vtornink) - Seshanba"),
              MyWord(word: "Среда (sreda) - Chorshanba"),
              MyWord(word: "Четверг (chetverg) - Payshanba"),
              MyWord(word: "Пятница (pyatnitsa) - Juma"),
              MyWord(word: "Суббота (subbota) - Shanba"),
              MyWord(word: "Воскресенье (voskrtsenie) - Yakshanba"),
              MyWord(word: "Сегодня (segodnya) - Bugun"),
              MyWord(word: "Завтра (zavtra) - Ertag"),
              MyWord(word: "Послезавтра (poslezavtra) - Indinga"),
              MyWord(word: "Вчера (vchera) - Kecha"),
              MyWord(word: "Позавчера (pozavchera) - O`tgan-kun"),
              MyWord(word: "Целый-день (cheliy den) - Kun-boyi"),
              MyWord(word: "День (deb) - Kun"),
              MyWord(word: "Неделя (nedlya) - Hafta"),
              MyWord(word: "Месяц (mesyats) - Oy"),
              MyWord(word: "Год (god) - Yil"),
              MyWord(word: "Зима (zima) - Qish"),
              MyWord(word: "Лето (leto) - Yoz"),
              MyWord(word: "Весна (vesno) - Bahor"),
              MyWord(word: "Осень (Osen) - Kuz"),
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
