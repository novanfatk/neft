import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:neft/constant/colors.dart';
import 'package:neft/models/binder.dart';
import 'dart:math';

class BinderCard extends StatelessWidget {
  final Binder binder;
  const BinderCard(this.binder, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: randomPinkList[random.nextInt(9) + 1]),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Bid placed by ${binder.name}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${DateFormat.yMMMd().format(binder.date!)} at ${binder.date!.hour} : ${binder.date!.minute}',
                style: TextStyle(color: Colors.grey[400]!),
              ),
            ])
          ],
        ),
        Text('${binder.price} ETH',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
      ],
    );
  }
}
