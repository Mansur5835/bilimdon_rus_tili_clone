import 'dart:math';

import 'package:flutter/material.dart';

import 'my_helper.dart';
import 'my_variant.dart';

class UzRusMashq13 extends StatefulWidget {
  const UzRusMashq13({Key? key}) : super(key: key);

  @override
  _UzRusMashq13State createState() => _UzRusMashq13State();
}

class _UzRusMashq13State extends State<UzRusMashq13> {
  bool showDialog = false;
  bool rightAnswer = false;
  int rightAnswerInt = 0;
  int wrongAnswerInt = 0;

  int index = Random().nextInt(11);

  List<String> list = MyHelper(
          s: "Мой (moy) - Mening(erkak)",
          s1: "Твой (tvoy) - Sening",
          s2: "Моя (moya) - Mening(ayol)",
          s3: "Книга (kniga) - Kitob",
          s4: "Книги (knigi) - Kitobning",
          s5: "Книгу (knigu) - Kitobni",
          s6: "С-книгой (s-knigoy) - Kitob-bilan",
          s7: "Ему (emu) - Unga(erkak)",
          s8: "Ей (ey) - Unga(ayol)",
          s9: "Нам (nam) - Bizga",
          s10: "У-тебя (u-tebya) - Senda")
      .uzPerevodRus();

  yangi() {
    setState(() {
      index = Random().nextInt(11);

      rightAnswer = false;
      showDialog = false;
    });
  }

  tugriJavob(int variant) {
    switch (index) {
      case 0:
        {
          showDialog = true;
          if (variant == 1) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }

          break;
        }
      case 1:
        {
          showDialog = true;
          if (variant == 2) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 2:
        {
          showDialog = true;
          if (variant == 3) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 3:
        {
          showDialog = true;
          if (variant == 4) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 4:
        {
          showDialog = true;
          if (variant == 3) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 5:
        {
          showDialog = true;
          if (variant == 1) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 6:
        {
          showDialog = true;
          if (variant == 1) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 7:
        {
          showDialog = true;
          if (variant == 2) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 8:
        {
          showDialog = true;
          if (variant == 1) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 9:
        {
          showDialog = true;
          if (variant == 4) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
      case 10:
        {
          showDialog = true;
          if (variant == 2) {
            setState(() {
              rightAnswerInt++;
            });
            rightAnswer = true;
          } else {
            setState(() {
              wrongAnswerInt++;
            });
          }
          break;
        }
    }
  }

  List<String> listString(String e) {
    return List.from(e.split(" "));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red.withOpacity(0),
        title: const Text("Bilimdon - Rus Tili."),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.blueGrey.withOpacity(0.2),
        child: Stack(alignment: AlignmentDirectional.topCenter, children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              listString(list[index])[0],
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyVariant(
                    text: listString(list[index])[1],
                    function: () {
                      tugriJavob(1);
                    },
                  ),
                  MyVariant(
                    text: listString(list[index])[2],
                    function: () {
                      tugriJavob(2);
                    },
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyVariant(
                    text: listString(list[index])[3],
                    function: () {
                      tugriJavob(3);
                    },
                  ),
                  MyVariant(
                    text: listString(list[index])[4],
                    function: () {
                      tugriJavob(4);
                    },
                  ),
                ]),
          ),
          showDialog
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    color: Colors.blue,
                    child: GestureDetector(
                      onTap: () {
                        yangi();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: const EdgeInsets.all(50),
                          padding: const EdgeInsets.all(10),
                          color: Colors.blueGrey[900],
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              rightAnswer
                                  ? const Text(
                                      "JAVOB TO`G`RI ! ! !",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : const Text(
                                      "JAVOB NOTO`G`RI ! ! !",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                              const Icon(Icons.arrow_right)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Container(
            margin: const EdgeInsets.only(top: 250, left: 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "TO`G`RI JAVOBLAR: $rightAnswerInt",
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "NOTO`G`RI JAVOBLAR: $wrongAnswerInt",
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
