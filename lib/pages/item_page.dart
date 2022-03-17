// Moh. Iqbal Waldan
// MI-2F
// 2031710139

import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  static const routeName = '/item';

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'My List: ' + itemArgs.name + ' Moh. Iqbal Waldan (2031710139)'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text("Item Nama: " +
            itemArgs.name +
            "\nItem Price: Rp. " +
            itemArgs.price.toString() +
            "\nItem Weight: " +
            itemArgs.weight.toString()),
      ),
    );
  }
}
