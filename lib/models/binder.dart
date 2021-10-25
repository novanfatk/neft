class Binder {
  String? name;
  DateTime? date;
  num? price;
  Binder({this.name, this.date, this.price});

  static List<Binder> generateBinder() {
    return [
      Binder(name: 'Jeni', date: DateTime.now(), price: 1.53),
      Binder(name: 'luky', date: DateTime.now(), price: 1.53),
      Binder(name: 'wiliam', date: DateTime.now(), price: 1.53),
      Binder(name: 'james', date: DateTime.now(), price: 1.53),
      Binder(name: 'evelyn', date: DateTime.now(), price: 1.53),
      Binder(name: 'harper', date: DateTime.now(), price: 1.53),
      Binder(name: 'mason', date: DateTime.now(), price: 1.53),
    ];
  }

  static List<Binder> generateHistory() {
    return [
      Binder(name: 'Jeni', date: DateTime.now(), price: 1.53),
      Binder(name: 'luky', date: DateTime.now(), price: 1.53),
      Binder(name: 'wiliam', date: DateTime.now(), price: 1.53),
      Binder(name: 'james', date: DateTime.now(), price: 1.53),
      Binder(name: 'evelyn', date: DateTime.now(), price: 1.53),
      Binder(name: 'harper', date: DateTime.now(), price: 1.53),
      Binder(name: 'mason', date: DateTime.now(), price: 1.53),
    ];
  }
}
