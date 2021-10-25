import 'package:flutter/material.dart';
import 'package:neft/models/binder.dart';
import 'package:neft/screens/pages/binder_card.dart';

class BinderList extends StatelessWidget {
  final String scrollKey;
  final List<Binder> binderList;
  const BinderList(this.scrollKey, this.binderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        key: PageStorageKey(scrollKey),
        padding: const EdgeInsets.all(20),
        itemBuilder: (_, index) => BinderCard(binderList[index]),
        separatorBuilder: (_, index) => const SizedBox(height: 15),
        itemCount: binderList.length);
  }
}
