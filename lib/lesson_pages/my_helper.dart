class MyHelper {
  String s;
  String s1;
  String s2;
  String s3;
  String s4;
  String s5;
  String s6;
  String s7;
  String s8;
  String s9;
  String s10;
  late String s11;
  late String s12;
  late String s13;
  late String s14;
  late String s15;
  // String s16;

  MyHelper({
    required this.s,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.s4,
    required this.s5,
    required this.s6,
    required this.s7,
    required this.s8,
    required this.s9,
    required this.s10,
  });
  MyHelper.rus({
    required this.s,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.s4,
    required this.s5,
    required this.s6,
    required this.s7,
    required this.s8,
    required this.s9,
    required this.s10,
    required this.s11,
    required this.s12,
    required this.s13,
    required this.s14,
    required this.s15,
  });

  List<String> stringTolist(String ss) {
    List<String> lst = List.from(ss.split(" "));

    lst.removeAt(1);
    lst.removeAt(1);
    return lst;
  }

  List<String> stringTo(String ss) {
    List<String> lst = List.from(ss.split("+"));

    return lst;
  }

//"Завтрак (zavtrak) - Nonushta"
  List<String> rusMashq() {
    List<String> list = [
      "${stringTo(s)[0]} ${stringTo(s)[1]} Нет Документ Вчера",
      "${stringTo(s1)[0]} Книга ${stringTo(s1)[1]} Сегодня Контракт",
      "${stringTo(s2)[0]} Повар Плохо ${stringTo(s2)[1]} Ты",
      "${stringTo(s3)[0]} Повар Её Она ${stringTo(s3)[1]}",
      "${stringTo(s4)[0]} Плохо Пакерь ${stringTo(s4)[1]} Идти",
      "${stringTo(s5)[0]} ${stringTo(s5)[1]} Пить Бухгалтер Пакерь",
      "${stringTo(s6)[0]} ${stringTo(s6)[1]} Человек Кассир Мне",
      "${stringTo(s7)[0]} ${stringTo(s7)[1]} Кассир Билет Специалист",
      "${stringTo(s8)[0]} ${stringTo(s8)[1]} Пакерь Водитель Это",
      "${stringTo(s9)[0]} Школа Они Ручка ${stringTo(s9)[1]}",
      "${stringTo(s10)[0]} Когда? ${stringTo(s10)[1]} Какой? Брюки"
          "${stringTo(s11)[0]} ${stringTo(s11)[1]} Нет Документ Вчера",
      "${stringTo(s12)[0]} Книга ${stringTo(s12)[1]} Сегодня Контракт",
      "${stringTo(s13)[0]} Повар Плохо ${stringTo(s13)[1]} Ты",
      "${stringTo(s14)[0]} Повар Её Она ${stringTo(s14)[1]}",
      "${stringTo(s15)[0]} Плохо Пакерь ${stringTo(s15)[1]} Идти",
    ];

    return list;
  }

  List<String> uzPerevodRus() {
    List<String> list = [
      "${stringTolist(s)[1]} ${stringTolist(s)[0]} Нет Документ Вчера",
      "${stringTolist(s1)[1]} Книга ${stringTolist(s1)[0]} Сегодня Контракт",
      "${stringTolist(s2)[1]} Повар Плохо ${stringTolist(s2)[0]} Ты",
      "${stringTolist(s3)[1]} Повар Её Она ${stringTolist(s3)[0]}",
      "${stringTolist(s4)[1]} Плохо Пакерь ${stringTolist(s4)[0]} Идти",
      "${stringTolist(s5)[1]} ${stringTolist(s5)[0]} Пить Бухгалтер Пакерь",
      "${stringTolist(s6)[1]} ${stringTolist(s6)[0]} Человек Кассир Мне",
      "${stringTolist(s7)[1]} ${stringTolist(s7)[0]} Кассир Билет Специалист",
      "${stringTolist(s8)[1]} ${stringTolist(s8)[0]} Пакерь Водитель Это",
      "${stringTolist(s9)[1]} Школа Они Ручка ${stringTolist(s9)[0]}",
      "${stringTolist(s10)[1]} Когда? ${stringTolist(s10)[0]} Какой? Брюки"
    ];

    return list;
  }

  List<String> rusPerevodUz() {
    List<String> list = [
      "${stringTolist(s)[0]} ${stringTolist(s)[1]} Ular Kim? Kecha",
      "${stringTolist(s1)[0]} Ishlar ${stringTolist(s1)[1]} Bugun Sovg`a",
      "${stringTolist(s2)[0]} Ertaga Yomon ${stringTolist(s2)[1]} Qanday",
      "${stringTolist(s3)[0]} Qancha? Men U(ayol) ${stringTolist(s3)[1]}",
      "${stringTolist(s4)[0]} Yomon Xayr ${stringTolist(s4)[1]} Juda",
      "${stringTolist(s5)[0]} ${stringTolist(s5)[1]} Ichmoq Sen Qalam",
      "${stringTolist(s6)[0]} ${stringTolist(s6)[1]} Sen Biz Aqlli",
      "${stringTolist(s7)[0]} Kun ${stringTolist(s7)[1]} Chipda Kecha",
      "${stringTolist(s8)[0]} ${stringTolist(s8)[1]} U(erkak) Osmon Tun",
      "${stringTolist(s9)[0]} Maktab Yo`l Ular ${stringTolist(s9)[1]}",
      "${stringTolist(s10)[0]} Kim? ${stringTolist(s10)[1]} Qaysi? Biz"
    ];

    return list;
  }
}
