import 'package:flutter/material.dart';

class Dars1Lugat extends MaterialPageRoute<void> {
  static final id = "dars1Lugat";
  Dars1Lugat()
      : super(builder: (BuildContext context) {
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
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Да (da) - Ha",
                                style: TextStyle(fontSize: 18),
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Нет (net) - Yo`q",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Спасибо (spasibo) - Rahmat",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Пожалуйста (pojaluysta) - Marhamat",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Извините (izvinite) - Uzr",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Простите (prostite) - Kechirasiz",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Минуточку (minutochku) - Bir daqiqa",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Хорошо (xorosho) - Yaxshi",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Плохо (ploxo) - Yomon",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Что? (chto) - Nima?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Кто? (kto) - Kim?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Какой? (kakoy) - Qaysi?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Когда? (kogda) - Qachon?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Где? (gde) - Qayerda?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Почему? (pochemu) - Nima uchun?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "От куда? (ot kuda) - Qayerda?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Сколко? (skolko) - Qancha?",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Всё (vsyo) - Hammasi",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Здесь (zdes) - Shu yerda",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Его (yego) - Uni(erkak)",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Её (yeyo) - Uni(ayol)",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Яблоко (yabloko) - Olma",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Арбуз (arbuz) - Tarvuz",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Брюки (bryuki) - Shim",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Рубашка (rubashka) - Ko`ylak",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Карандаш (karandash) - Qalam",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Книга (kniga) - Kitob",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Дерево (derevo) - Daraxt",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Собака (soboka) - It",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Мальчик (malchik) - O`g`il bola",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Девочка (devoсhka) - Qiz bola",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Большой (bolshoy) - Katta",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Маленький (malenkiy) - Kichik",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Цвет (chvet) - Rang",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Пить (pit) - Ichish",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Говорить (govorit) - Gapirish",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Школа (shkola) - Maktab",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Идти (idti) - Kelmoq",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Человек (chelovek) - Odam",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Умний (umniy) - Aqlli",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Улица (ulitsa) - Ko`cha",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Праздник (prazdnik) - Bayram",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Сегодня (segondnya) - Bugun",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Завтра (zavtra) - Ertaga",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Вчера (vchera) - Kecha",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Мясо (myaso) - Go`sht",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Встаёт (vstayot) - Turyapdi",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Цветы (tsveti) - Gullar",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 1,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
}
