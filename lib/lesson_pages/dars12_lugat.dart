import 'package:flutter/material.dart';

class Dars12Lugat extends StatefulWidget {
  const Dars12Lugat({Key? key}) : super(key: key);

  @override
  _Dars12LugatState createState() => _Dars12LugatState();
}

class _Dars12LugatState extends State<Dars12Lugat> {
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
              MyWord(word: "Написал (napisal) - Yozdim(erkak)"),
              MyWord(word: "Написала (napisala) - Yozdim(ayol)"),
              MyWord(word: "Написали (napisali) - Yosdik(ko`plik)"),
              MyWord(word: "Пишу (pishu) - Yozyapman"),
              MyWord(word: "Напишу (napishu) - Yozaman"),
              MyWord(word: "Сплю (splyu) - Uxlayapman"),
              MyWord(word: "Буду-спать (budu-spat) - Uxlayman"),
              MyWord(word: "Спал (spal) - Uxlayotgan-edim"),
              MyWord(word: "Ждать (jdat) - Kutish"),
              MyWord(word: "Ждал (jdal) - Kutdim"),
              MyWord(word: "Жду (jdu) - Kutyapman"),
              MyWord(word: "Ждём (jdеm) - Kutyapmiz"),
              MyWord(word: "Спрашивать (sprashivat) - So`rash"),
              MyWord(word: "Рождатся (rojdatsya) - Tug`ilish"),
              MyWord(word: "Иду (idu) - Boryapman"),
              MyWord(word: "Пойдём (poydem) - Boramiz"),
              MyWord(word: "Вернутся (vernutsya) - Qaytish"),
              MyWord(word: "Встать (vstat) - Turish"),
              MyWord(word: "Опаздывать (opazdivat) - Kechikish"),
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
