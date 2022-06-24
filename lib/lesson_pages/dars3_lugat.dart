import 'package:flutter/material.dart';

class Dars3Lugat extends StatefulWidget {
  Dars3Lugat({Key? key}) : super(key: key);

  @override
  _Dars3LugatState createState() => _Dars3LugatState();
}

class _Dars3LugatState extends State<Dars3Lugat> {
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
              MyWord(word: "Доктор (doktor) - Shifakor"),
              MyWord(word: "Директор (direktor) - Mudir"),
              MyWord(word: "Министр (ministr) - Vazir"),
              MyWord(word: "Программист (programmist) - \nDasturchi"),
              MyWord(word: "Психолог (psixolog) - Ruxshunos"),
              MyWord(word: "Секретарша (sekretarsha) - Kotiba"),
              MyWord(word: "Шеф (shef) - Xo`jayin"),
              MyWord(word: "Юрист (yurist) - Huquqshunos"),
              MyWord(word: "Архитектор (arxitektor) - Me`mor"),
              MyWord(word: "Продавец (prodavets) - Sotuvchi"),
              MyWord(word: "Уборщик (uborshik) - Farrosh"),
              MyWord(word: "Биснесмен (bisnesmen) - Ishbilarmon"),
              MyWord(word: "Замаститель (zamestitel) - "),
              MyWord(word: "Работник (rabornik) - Ishchi"),
              MyWord(word: "Химик (ximik) - Kimyogar"),
              MyWord(word: "Сотрудник (sotrudnik) - Xodim"),
              MyWord(word: "Коллега (kollega) - Hamkasb"),
              MyWord(word: "Сторож (storoj) - Qorovul"),
              MyWord(word: "Учитель (uchitel) - O`qituvchi"),
              MyWord(word: "Мясник (myasnik) - Qassob"),
              MyWord(word: "Спортсмен (sportsmen) - Sportchi"),
              MyWord(word: "Домохозяйка (domoxozyayka) - \nUy bekasi"),
              MyWord(word: "Водник (vodnik) - Suvchi"),
              MyWord(word: "Ремесленник (remeslennik) - \nXunarmand"),
              MyWord(word: "Земледелец (zemledelets) - Dehqon"),
              MyWord(word: "Советник (sovetnik) - Maslahatchi"),
              MyWord(word: "Водитель (voditel) - Haydovchi"),
              MyWord(word: "Акурешка (akureshka) - Doya"),
              MyWord(word: "Кассир (kassir) - G`aznachi"),
              MyWord(word: "Пакерь (paker) - Novvoy"),
              MyWord(word: "Бухгалтер (buhgalter) - Xisobchi"),
              MyWord(word: "Сапожник (sapojnik) - Etikdo`z"),
              MyWord(word: "Медсестра (medsestra) - Hamshira"),
              MyWord(word: "Повар (povar) - Oshpaz"),
              MyWord(word: "Саводник (savodnik) - Bog`bon"),
              MyWord(word: "Плотник (plotnik) - Duradgor"),
              MyWord(word: "Учёный (uchoniy) - Olim"),
              MyWord(word: "Хирург (hirurg) - Jarrox"),
              MyWord(word: "Партнёр (partnor) - Hamkor"),
              MyWord(word: "Специалист (spetsialist) - \nMutaxasis"),
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
