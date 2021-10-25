import 'package:flutter/material.dart';
import 'package:neft/models/art.dart';
import 'package:neft/screens/pages/detail.dart';

class CustomGird extends StatelessWidget {
  final String scroolKey;
  final List<Art> list;

  const CustomGird({required this.scroolKey, required this.list, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        key: PageStorageKey(scroolKey),
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailPage(list[index])));
          },
          child: Container(
            height: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Hero(
              tag: list[index].imgUrl!,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    list[index].imgUrl!,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
