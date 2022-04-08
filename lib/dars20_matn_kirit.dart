import 'dart:math';

import 'package:flutter/material.dart';

import 'my_variant.dart';

class InputText extends StatefulWidget {
  const InputText({Key? key}) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool inVisibility = false;

  late String isRighttext;
  bool showDialogRorW = false;
  int index = Random().nextInt(16);

  List<Map<String, String>> list = [
    {"Qaysi rangni yaxshi ko`rasiz?": "Какой цвет вы любите?"},
    {"Qayerdan mahsulotlarni sotib olyapsiz?": "Где вы покупаете продукты?"},
    {"Bu yaxshi g`oya": "Это хорошая идея"},
    {"Men uni yomon tushinyapman(erkak)": "Я плохо его понимаю"},
    {"Mening ismim Nodir": "Меня зовут Нодир"},
    {"Sizning ismingiz nima?": "Как вас зовут?"},
    {"Men kitob o`qiyapman": "Я читаю кинигу"},
    {"Men ko`chadaman": "Я на улице"},
    {"Men kecha uxlamadim": "Вчера я не спил"},
    {"Sen nima qilyapsan": "Ты что делаеш"},
    {"Men kimman?": "Кто я?"},
    {"Bu mening oyim": "Это мoя мама"},
    {"Sen qaysi kitobni o`qiyapsan": "Какию книгу ты читаеш"},
    {"Sizning muommongiz bormi?": "У вас есть проблемы?"},
    {"Qancha ruscha so`z bilasiz?": "Сколько русские слова вы знаете?"},
    {"Bu juda sovuq xona": "Это очень холодная комната"},
  ];

  inputText(String val) {
    setState(() {
      isRighttext = val;
      inVisibility = true;
    });
  }

  showRightAndWrongAnswer() {
    // ignore: unrelated_type_equality_checks
    //isRighttext==list[index].values

    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "To`gri javob",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Text(list[index]
                    .values
                    .toString()
                    .replaceAll(RegExp(r'[()]'), ""))),
            SizedBox(
              height: 40,
            ),
            Text(
              "Sizning javob",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Text(isRighttext.toString())),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: IconButton(
                        onPressed: () {
                          index = Random().nextInt(16);
                          setState(() {
                            showDialogRorW = false;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                          // size: 60,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
        height: 240,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
      ),
    );
  }

  clickButton() {
    setState(() {
      showDialogRorW = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.red.withOpacity(0),
        title: const Text("Bilimdon - Rus Tili."),
      ),
      body: Stack(
        // alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            alignment: Alignment(-0.3, -0.9),
            child: Text(
              list[index].keys.toString().replaceAll(RegExp(r"[()]"), ""),
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            alignment: Alignment(0, -0.5),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                // maxLength: 3,

                maxLines: 2,
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Gapni tarjimasini\nkiriting....",
                  hintStyle: TextStyle(color: Colors.black12),
                  // labelStyle: TextStyle(color: Colors.black12),
                  icon: Icon(
                    Icons.input,
                    size: 40,
                  ),
                ),
                // obscureText: false,
                onChanged: (val) {
                  inputText(val);
                },
              ),
            ),
          ),
          Visibility(
            visible: inVisibility,
            child: Container(
              alignment: Alignment(0, 0.5),
              child: MaterialButton(
                height: 50,
                onPressed: clickButton,
                child: Text(
                  "Tekshirish",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                minWidth: 250,
              ),
            ),
          ),
          showDialogRorW ? showRightAndWrongAnswer() : SizedBox.shrink(),
        ],
      ),
    );
  }
}
