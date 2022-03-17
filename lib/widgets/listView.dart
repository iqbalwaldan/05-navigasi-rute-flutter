// Moh. Iqbal Waldan
// MI-2F
// 2031710139

import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/card.dart';

class MylistView extends StatelessWidget {
  const MylistView({
    Key? key,
    required this.items,
    required this.page,
  }) : super(key: key);

  final List<Item> items;
  final String page;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, page, arguments: item);
          },
          child: Mycard(
            name: item.name,
            price: item.price,
            weight: item.weight,
          ),
        );
      },
    );
  }
}
