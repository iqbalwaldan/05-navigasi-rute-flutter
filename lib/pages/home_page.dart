// Moh. Iqbal Waldan
// MI-2F
// 2031710139

import 'package:flutter/material.dart';
import 'package:navigasi_dan_rute/pages/item_page.dart';
import '../models/item.dart';
import '../widgets/listView.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, weight: 30),
    Item(name: 'Salt', price: 2000, weight: 10),
  ];

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja Moh. Iqbal Waldan (2031710139)'),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: MylistView(
          items: items,
          page: ItemPage.routeName,
        ),
      ),
    );
  }
}
