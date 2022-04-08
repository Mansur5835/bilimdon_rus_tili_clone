import 'dart:math';

import 'package:flutter/material.dart';

import 'my_helper.dart';
import 'my_variant.dart';

class TushibQolganSuz extends StatefulWidget {
  const TushibQolganSuz({Key? key}) : super(key: key);

  @override
  _TushibQolganSuzState createState() => _TushibQolganSuzState();
}

class _TushibQolganSuzState extends State<TushibQolganSuz> {
  @override
  bool showDialog = false;
  bool rightAnswer = false;
  int rightAnswerInt = 0;
  int wrongAnswerInt = 0;
  late int index;

  @override
  void initState() {
    super.initState();
    index = Random().nextInt(15);
  }

  List<String> list = MyHelper.rus(
    s: "Это-...-дом?\n\nBu-sening-uyingmi?+твой",
    s1: "Дети-...-получать-подарки\n\nBolalar-sovg`a-olishni-yaxshi-ko`rishadi+любят",
    s2: "Она-говарит-на-...-языке\n\nU-arab-tilida-gapiryapdi+арабском",
    s3: "Юсуф-играет-...-друзями\n\nYusuf-o`rtoqlari-bilan-o`ynayaodi+с",
    s4: "Я-туда-больше-никогда-не-...\n\nMen-u-yerga-xech-qachon-bormayman+пойду",
    s5: "Я-хочу-продать-...-дачу\n\nMen-o`z-dala-hovlimni-sotib-yubormoqchiman+свою",
    s6: "За-сколько-...\n\nQanchaga-sotyapsan+продаёшь",
    s7: "Мы-...-в-семь-часов\n\nBiz-soat-yettida-nobushta-qilamiz+завтракаем",
    s8: "Их-дом-...-долта\n\nUlarning-uyi-yonib-kul-bo`ldi+скорел",
    s9: "Ты-понял-...-ошибку\n\nO`z-hatoingni-tushindingmi-erkak:)?+свою",
    s10: "Я-ничего-...-слышал\n\nMen-xech-narsani-eshitmadim+не",
    s11: "...-вымал\n\nQo`lingni-yuvdingmi?+руки",
    s12: "Я-на-...\n\nMen-ishdaman+работе",
    s13: "Это-...-меня\n\nBu-mendan.+от",
    s14: "Я-...-спал\n\nMen-uxlamadim+не",
    s15: "...-есть\n\nSavollar-bormi?+вопросы",
  ).rusMashq();

  yangi() {
    setState(() {
      index = Random().nextInt(15);

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
      case 11:
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
      case 12:
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
      case 13:
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
      case 14:
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
      case 15:
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
            padding: const EdgeInsets.only(top: 140),
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
            padding: const EdgeInsets.only(top: 200),
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
              ? Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.only(top: 25),
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  height: 220,
                  child: GestureDetector(
                    onTap: () {
                      yangi();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        margin: const EdgeInsets.all(60),
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
                )
              : const SizedBox.shrink(),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 0),
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
