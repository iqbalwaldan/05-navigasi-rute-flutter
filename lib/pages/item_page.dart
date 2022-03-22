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
            'My Film ' + itemArgs.name + ' Moh. Iqbal Waldan (2031710139)'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(image: AssetImage(itemArgs.image)),
                )),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  itemArgs.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  itemArgs.year.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
