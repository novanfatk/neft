import 'package:neft/models/art.dart';
import 'package:neft/models/binder.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;

  List<Art>? creations;
  List<Art>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.desc,
      this.email,
      this.creations,
      this.collections});

  static Profile generateProfile() {
    return Profile(
        imgUrl: 'assets/images/avatar.png',
        name: 'Novan Fatkhurrohman',
        twitter: '@Codinodev',
        desc: '3D artist from Tegal, Indonesia. His Work is all',
        email: 'codinodev@gmail.com',
        creations: [
          Art(
              imgUrl: 'assets/images/create1.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/create2.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/create3.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/create4.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/create5.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
        ],
        collections: [
          Art(
              imgUrl: 'assets/images/collection1.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/collection2.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/collection3.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/collection4.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
          Art(
              imgUrl: 'assets/images/collection5.jpeg',
              name: 'Consume',
              price: 1.53,
              desc: 'so happy to share my second collab with m dear',
              birds: Binder.generateBinder(),
              history: Binder.generateHistory()),
        ]);
  }
}
