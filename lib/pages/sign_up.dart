import 'package:bilimdon_rus/pages/sign_in.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../services/hive_db.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameC = TextEditingController();
  TextEditingController _passwordC = TextEditingController();

  creadUser() async {
    User user =
        User(name: _nameC.text.trim(), password: _passwordC.text.trim());

    await HiveDB.creadUser(user);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
      return SignIn();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Bilimdon rus tili",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(40)),
                child: TextField(
                  controller: _nameC,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ismi  familiyangizni kiriting"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(40)),
                child: TextField(
                  controller: _passwordC,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Porolni kiriting"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(40)),
                child: TextField(
                  controller: _passwordC,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Porolni Tekshirish"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: creadUser,
                child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        border:
                            Border.all(color: Colors.grey.shade400, width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      "Kirish",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
