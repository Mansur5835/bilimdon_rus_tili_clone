import 'package:bilimdon_rus/animations/fade_anim.dart';
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
    print("-------");

    Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (asd, asdf, animation, child) {
              return SlideTransition(
                position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                    .animate(asdf),
                child: child,
              );
            },
            pageBuilder: (c, a, an) {
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
              FadeAnimation(
                child: Text(
                  "Bilimdon rus tili",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _nameC,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "Ismi  familiyangizni kiriting"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _passwordC,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        hintText: "Porolni kiriting"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _passwordC,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        hintText: "Porolni Tekshirish"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(
                child: InkWell(
                  onTap: creadUser,
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Kirish",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
