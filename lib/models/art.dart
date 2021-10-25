import 'package:neft/models/binder.dart';

class Art {
  String? imgUrl;
  String? name;
  num? price;
  String? desc;
  List<Binder>? birds;
  List<Binder>? history;

  Art(
      {this.imgUrl,
      this.name,
      this.price,
      this.desc,
      this.birds,
      this.history});
}
