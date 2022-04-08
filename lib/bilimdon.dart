import 'dart:io';

import 'package:bilimdon_rus/pages/profile_page.dart';

import 'dars1Lugat.dart';
import 'dars2_lugat.dart';
import 'models/user.dart';
import 'rusUzMashq1.dart';
import 'rus_us_mashq2.dart';
import 'rus_uz_Mashq13.dart';
import 'rus_uz_mashq10.dart';
import 'rus_uz_mashq11.dart';
import 'rus_uz_mashq12.dart';
import 'rus_uz_mashq14.dart';
import 'rus_uz_mashq15.dart';
import 'rus_uz_mashq16.dart';
import 'rus_uz_mashq17.dart';
import 'rus_uz_mashq18.dart';
import 'rus_uz_mashq3.dart';
import 'rus_uz_mashq4.dart';
import 'rus_uz_mashq5.dart';
import 'rus_uz_mashq6.dart';
import 'rus_uz_mashq7.dart';
import 'rus_uz_mashq8.dart';
import 'rus_uz_mashq9.dart';
import 'services/hive_db.dart';
import 'uz_rus_mashq1.dart';
import 'uz_rus_mashq10.dart';
import 'uz_rus_mashq11.dart';
import 'uz_rus_mashq12.dart';
import 'uz_rus_mashq13.dart';
import 'uz_rus_mashq14.dart';
import 'uz_rus_mashq15.dart';
import 'uz_rus_mashq16.dart';
import 'uz_rus_mashq17.dart';
import 'uz_rus_mashq18.dart';
import 'uz_rus_mashq2.dart';
import 'uz_rus_mashq3.dart';
import 'uz_rus_mashq4.dart';
import 'uz_rus_mashq5.dart';
import 'uz_rus_mashq6.dart';
import 'uz_rus_mashq7.dart';
import 'uz_rus_mashq8.dart';
import 'uz_rus_mashq9.dart';
import 'package:flutter/material.dart';

import 'dars10_lugat.dart';
import 'dars11_lugat.dart';
import 'dars12_lugat.dart';
import 'dars13_lugat.dart';
import 'dars14_lugat.dart';
import 'dars15_lugat.dart';
import 'dars16_lugat.dart';
import 'dars17_lugat.dart';
import 'dars18_lugat.dart';
import 'dars19_mashq_tush_suz.dart';
import 'dars20_matn_kirit.dart';
import 'dars3_lugat.dart';
import 'dars4_lugat.dart';
import 'dars5_lugat.dart';
import 'dars6_lugat.dart';
import 'dars7_lugat.dart';
import 'dars8_lugat.dart';
import 'dars9_lugat.dart';

class Bilimdon extends StatefulWidget {
  static const String id = "bilimdon";
  const Bilimdon({Key? key}) : super(key: key);

  @override
  _BilimdonState createState() => _BilimdonState();
}

class _BilimdonState extends State<Bilimdon> {
  bool dars1 = false;
  bool dars2 = false;
  bool dars3 = false;
  bool dars4 = false;
  bool dars5 = false;
  bool dars6 = false;
  bool dars7 = false;
  bool dars8 = false;
  bool dars9 = false;
  bool dars10 = false;
  bool dars11 = false;
  bool dars12 = false;
  bool dars13 = false;
  bool dars14 = false;
  bool dars15 = false;
  bool dars16 = false;
  bool dars17 = false;
  bool dars18 = false;
  bool dars19 = false;
  bool dars20 = false;

  final textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  File? file;
  String? imagePath;
  User? user;

  getUser() async {
    imagePath = await HiveDB.getProfile();
    user = await HiveDB.getUser();

    if (imagePath != null) {
      file = File(imagePath!);
    }

    setState(() {});
  }

  _showDialog() {
    showDialog(
        context: context,
        builder: (c) {
          return AlertDialog(
              title: Text("Dasturdan chiqish buyrug`i"),
              content: Text(
                  "Siz dasturdan chiqyapsiz tastiqlash uchun 'HA' tugmasini tanlang!!"),
              actions: [
                TextButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: Text("HA")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("YO`Q")),
              ]);
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: file == null
                    ? InkWell(
                        child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue),
                      ))
                    : InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            file!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  user != null ? user!.name : "",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Material(
                        color: Colors.blue,
                        shadowColor: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 8),
                            leading: CircleAvatar(
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                            ),
                            title: Text("Asosiy oyna",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.blue,
                        shadowColor: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) {
                              return Profile();
                            }));
                          },
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 8),
                            leading: CircleAvatar(
                              child: Icon(
                                Icons.account_box,
                                color: Colors.white,
                              ),
                            ),
                            title: Text("Mening akkauntim",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.blue,
                        shadowColor: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) => Container(
                                height: 400,
                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment(0, -0.8),
                                      child: Container(
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "lib/image/nodir.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment(0.98, 0.2),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "lib/image/tmi.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment(-0.98, 0.2),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "lib/image/tmi1.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment(0, 0.7),
                                        child: Text(
                                          "Dastur muallifi:  Nodirbek Kadamov",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 8),
                            leading: CircleAvatar(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            title: Text("Dastur muallifi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.blue,
                        shadowColor: Colors.black,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            _showDialog();
                          },
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 8),
                            leading: CircleAvatar(
                              child: Icon(
                                Icons.power_settings_new_rounded,
                                color: Colors.white,
                              ),
                            ),
                            title: Text("Dasturdan chiqish",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          shadowColor: Colors.red.withOpacity(0),
          backgroundColor: Colors.blue,
          title: const Text("Bilimdon - Rus Tili"),
        ),
        body: Container(
          width: width,
          color: Colors.white,
          child: ListView(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              children: [
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  // SizedBox(
                  //   width: 3,
                  // ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars1 = !dars1;
                      });
                    },
                    child: Text("1-Dars. Umumiy gaplar.", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars1,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, Dars1Lugat());
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RusUzMashq1()));
                          },
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UzRusMashq1())),
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars2 = !dars2;
                      });
                    },
                    child: Text("2-Dars. Tanishuv", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars2,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars2Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq2())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq2()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars3 = !dars3;
                      });
                    },
                    child: Text("3-Dars. Kasblar", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars3,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars3Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMash3())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRUsMashq3()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars4 = !dars4;
                      });
                    },
                    child: Text("4-Dars. Oziq-ovqat", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars4,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars4Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzmashq4())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq4()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars5 = !dars5;
                      });
                    },
                    child: Text("5-Dars. Sayohat", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars5,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars5Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq5())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq5()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars6 = !dars6;
                      });
                    },
                    child: Text("6-Dars. Sixat salomatlik", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars6,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dart6Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq6())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq6()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars7 = !dars7;
                      });
                    },
                    child: Text("7-Dars. Sonlar", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars7,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars7Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq7())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq7()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars8 = !dars8;
                      });
                    },
                    child: Text("8-Dars. Kunlar, oylar, fasllar",
                        style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars8,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars8Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq8())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq8()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars9 = !dars9;
                      });
                    },
                    child:
                        Text("9-Dars. Ranglar va shakllar. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars9,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars9Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq9())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMash19()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars10 = !dars10;
                      });
                    },
                    child: Text("10-Dars. Olmoshlar. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars10,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars10Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq10())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq10()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars11 = !dars11;
                      });
                    },
                    child:
                        Text("11-Dars. Sifat darajalari. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars11,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars11Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq11())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq11()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars12 = !dars12;
                      });
                    },
                    child: Text("12-Dars. Zamonlar. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars12,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars12Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq12())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq12()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars13 = !dars13;
                      });
                    },
                    child: Text("13-Dars. Kelishiklar. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars13,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars13Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq13())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq13()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars14 = !dars14;
                      });
                    },
                    child: Text("14-Dars. So`roq va inkor so`zlar. ",
                        style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars14,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars14Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq14())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq14()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars15 = !dars15;
                      });
                    },
                    child: Text("15-Dars. Fe`llar. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars15,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars15Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq15())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq15()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars16 = !dars16;
                      });
                    },
                    child: Text("16-Dars. Hayvonlar va \nhasharotlar. ",
                        style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars16,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars16Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq16())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq16()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars17 = !dars17;
                      });
                    },
                    child: Text("17-Dars. Inson yanasi. ", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars17,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars17Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq17())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq17()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        dars18 = !dars18;
                      });
                    },
                    child: Text("18-Dars. Tabiat va olam.", style: textStyle),
                  ),
                ]),
                Visibility(
                  visible: dars18,
                  child: Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dars18Lugat()));
                          },
                          child: Text(
                            "Darsdagi so`zlar lug`ati.",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RusUzMashq18())),
                          child: Text(
                            "Ruscha-O`zbekcha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                      Row(children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.file_present_outlined,
                          size: 45,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UzRusMashq18()));
                          },
                          child: Text(
                            "O`zbekcha-Ruscha lug`at\nbilan mashlar",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TushibQolganSuz()));
                    },
                    child: Text("19-Dars. Tushib qolgan so`zni \ntopish.",
                        style: textStyle),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Icon(
                    Icons.book_outlined,
                    size: 45,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputText()));
                    },
                    child: Text("20-Dars. Gap tuzish.", style: textStyle),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
