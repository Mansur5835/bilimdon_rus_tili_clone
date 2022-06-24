import 'package:bilimdon_rus/pages/sign_in.dart';
import 'package:bilimdon_rus/pages/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'lesson_pages/bilimdon.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  await Hive.openBox("db");

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bilimdon Rus-tili",
      debugShowCheckedModeBanner: false,
      home: SignUp(),
      routes: {
        Bilimdon.id: (context) => const Bilimdon(),
      },
    );
  }
}
