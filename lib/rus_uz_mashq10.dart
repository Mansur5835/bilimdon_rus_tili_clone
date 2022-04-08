import 'dart:math';

import 'package:flutter/material.dart';

import 'my_helper.dart';
import 'my_variant.dart';

class RusUzMashq10 extends StatefulWidget {
  const RusUzMashq10({Key? key}) : super(key: key);

  @override
  _RusUzMashq10State createState() => _RusUzMashq10State();
}

class _RusUzMashq10State extends State<RusUzMashq10> {
  @override
  bool showDialog = false;
  bool rightAnswer = false;
  int rightAnswerInt = 0;
  int wrongAnswerInt = 0;

  int index = Random().nextInt(11);

  List<String> list = MyHelper(
          s: "Я (ya) - Men",
          s1: "Ты (ты) - sen",
          s2: "Мы (mi) - Biz",
          s3: "Она (ona) - U(ayol)",
          s4: "Мой (moy) - Meniki",
          s5: "Мое (moyo) - Meniki",
          s6: "Мой (moy) - Meniki",
          s7: "Твоя (tvoya) - Seniki",
          s8: "Его (yeyo) - Uning(erkak)",
          s9: "Ваш (vash) - Sizning",
          s10: "Им (im) - Ularga")
      .rusPerevodUz();

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
