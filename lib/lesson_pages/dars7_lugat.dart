import 'package:flutter/material.dart';

class Dars7Lugat extends StatefulWidget {
  const Dars7Lugat({Key? key}) : super(key: key);

  @override
  _Dars7LugatState createState() => _Dars7LugatState();
}

class _Dars7LugatState extends State<Dars7Lugat> {
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
              MyWord(word: "Один (odin) - Bir"),
              MyWord(word: "Два (dva) - Ikki"),
              MyWord(word: "Три (tri) - Uch"),
              MyWord(word: "Четыре (chetiri) - To`rt"),
              MyWord(word: "Пять (pyat) - Besh"),
              MyWord(word: "Шесть (shest) - Olti"),
              MyWord(word: "Семь (sem) - Yetti"),
              MyWord(word: "Восемь (vosem) - Sakkiz"),
              MyWord(word: "Девять (devyat) - To`qqiz"),
              MyWord(word: "Десять (desyat) - O`n"),
              MyWord(word: "Одиннадцать (odinatsat) - \nO`n-bir"),
              MyWord(word: "Двенацать (dvenatsat) - \nO`n-ikki"),
              MyWord(word: "Тринацать (trinatsat) - \nO`n-uch"),
              MyWord(word: "Четырнацать (chetirnatsat) - \nO`n-to`rt"),
              MyWord(word: "Пятнацать (pyatnatsat) - \nO`n-besh"),
              MyWord(word: "Шестнацать (shestnatsat) - \nO`n-olti"),
              MyWord(word: "Семьнацать (semnatsat) - \nO`n-yetti"),
              MyWord(word: "Восемьнацать (vosemnatsat) - \nO`n-Sakkiz"),
              MyWord(word: "Девятьнацать (devyatnatsat) - \nO`n-to`qqiz"),
              MyWord(word: "Двадцвть (dvatsat) - Yigirma"),
              MyWord(word: "Двадцвть-один (dvatsat-odin) - \nYigirma-bir"),
              MyWord(word: "Тридцать (Tritsat) - O`ttiz"),
              MyWord(word: "Сорок (sorok) - Qirt"),
              MyWord(word: "Пятьдесять (pyatdesyat) - Ellik"),
              MyWord(word: "Шестьдесять (shestdesyat) - Oltmish"),
              MyWord(word: "Семьдесять (semdesyat) - Yetmish"),
              MyWord(word: "Восемьдесять (vosemdesyat) - Sakson"),
              MyWord(word: "Девяносто (devyanosto) - Toqson"),
              MyWord(word: "Сто (sto) - Yuz"),
              MyWord(word: "Сто-один (sto-odin) - Bir-yuz-bir"),
              MyWord(word: "Сто-десять (sto-desit) - \nBir-yuz-o`n"),
              MyWord(word: "Двести (dvesti) - Ikki-yuz"),
              MyWord(word: "Триста (tsista) - Uch-yuz"),
              MyWord(word: "Четыреста (chetiresta) - To`rt-yuz"),
              MyWord(word: "Пятьсот (pyatsot) - Besh-yuz"),
              MyWord(word: "Шестьсот (shestsot) - Olti-yuz"),
              MyWord(word: "Семьсот (semsot) - Yetti-yuz"),
              MyWord(word: "Восемьсот (vosemsot) - Sakkiz-yuz"),
              MyWord(word: "Девятьсот (devyatsot) - To`qqiz-yuz"),
              MyWord(word: "Тысяча (tisyacha) - Ming"),
              MyWord(word: "Две-тысяча (dve tisyacha) - \nIkki-ming"),
              MyWord(word: "Миллион (million) - Million"),
              MyWord(word: "Две-миллион (dve million) - \nIkki-million"),
              MyWord(word: "Перввый (perviy) - Birinchi"),
              MyWord(word: "Второй (vtoroy) - Ikkinchi"),
              MyWord(word: "Тритый (tritiy) - Uchinchi"),
              MyWord(word: "Четвертый (chetvyortiy) - To`rtinchi"),
              MyWord(word: " Пятый(pyatiy) - Beshinchi"),
              MyWord(word: "Шестой (shestoy) - Oltinchi"),
              MyWord(word: "Седьмой (sedmoy) - Yettinchi"),
              MyWord(word: "Восьмой (vosmoy) - Sakkizinchi"),
              MyWord(word: "Девятый (devyatiy) - To`qqizinchi"),
              MyWord(word: "Дсятый (desyatiy) - O`ninchi"),
              MyWord(word: "Одиннадцатый (odinatsitiy) - \nO`n-birinchi"),
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
