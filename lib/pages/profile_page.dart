import 'dart:io';

import 'package:bilimdon_rus/pages/sign_in.dart';
import 'package:bilimdon_rus/services/hive_db.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/user.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nameC = TextEditingController();
  TextEditingController _passwordC = TextEditingController();
  User? user;
  File? file;
  String? imagePath;

  _imageCamera() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      file = File(image.path);
    }

    setState(() {});
  }

  _imageGallery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      file = File(image.path);
    }

    setState(() {});
  }

  getUser() async {
    user = await HiveDB.getUser();
    imagePath = await HiveDB.getProfile();

    if (user != null) {
      _nameC.text = user!.name;
      _passwordC.text = user!.password;
    }

    if (imagePath != null) {
      file = File(imagePath!);
    }

    setState(() {});
  }

  creadUser() async {
    User _user =
        User(name: _nameC.text.trim(), password: _passwordC.text.trim());

    await HiveDB.creadUser(_user);

    if (file != null) {
      await HiveDB.creadProfile(file!.path);
    }

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
      return SignIn();
    }));
  }

  _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (c) {
          return Container(
            height: 100,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    _imageGallery();
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  icon: Icon(
                    Icons.photo_size_select_actual,
                    color: Colors.grey.shade700,
                  ),
                  label: Text(
                    "Pick photo",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _imageCamera();
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  icon: Icon(
                    Icons.photo_camera,
                    color: Colors.grey.shade700,
                  ),
                  label: Text(
                    "Take photo",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ],
            ),
          );
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Akkaunt"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              file == null
                  ? InkWell(
                      onTap: _showBottomSheet,
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
                      onTap: _showBottomSheet,
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
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _nameC,
                decoration: InputDecoration(
                  helperText: "Ismni o`zgartirish",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordC,
                decoration: InputDecoration(
                  helperText: "Parolni o`zgartirish",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Colors.blue,
                minWidth: double.infinity,
                height: 50,
                onPressed: creadUser,
                child: Text("Saqlash",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
