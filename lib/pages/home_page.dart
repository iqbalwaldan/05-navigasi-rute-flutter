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
    Item(
        image: '../asset/image/Spider-Man_Homecoming_poster.jpg',
        name: 'Spider-Man: Homecoming',
        year: 2017),
    Item(
        image: '../asset/image/Spider-Man_Far_From_Home_poster.jpg',
        name: 'Spider-Man: Far from Home',
        year: 2019),
    Item(
        image: '../asset/image/Spider-Man_No_Way_Home_poster.jpg',
        name: 'Spider-Man: No Way Home',
        year: 2021),
  ];

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Film Moh. Iqbal Waldan (2031710139)'),
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
