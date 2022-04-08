class User {
  late String name;
  late String password;

  User({required this.name, required this.password});

  User.fromJson(Map<dynamic, dynamic> map) {
    name = map['name'];
    password = map['password'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'password': password};
  }
}
