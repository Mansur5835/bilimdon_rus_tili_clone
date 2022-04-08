import 'package:bilimdon_rus/bilimdon.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../services/hive_db.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  User? user;
  bool isLoad = false;

  TextEditingController _nameC = TextEditingController();
  TextEditingController _passwordC = TextEditingController();

  getUser() async {
    setState(() {
      isLoad = true;
    });

    user = await HiveDB.getUser();
    print("--------------$user");

    setState(() {
      isLoad = false;
    });
    if (user != null) {
      _nameC.text = user!.name;
      _passwordC.text = user!.password;
      setState(() {});
      return;
    }

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
      return SignUp();
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Center(
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
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
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
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(40)),
                    child: TextField(
                      controller: _passwordC,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Porolni kiriting"),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (c) {
                        return Bilimdon();
                      }));
                    },
                    child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            border: Border.all(color: Colors.white, width: 2),
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
            isLoad
                ? Container(
                    color: Colors.black.withOpacity(0.4),
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
