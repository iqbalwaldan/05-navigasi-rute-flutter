// Moh. Iqbal Waldan
// MI-2F
// 2031710139

import 'package:flutter/material.dart';
import 'package:navigasi_dan_rute/pages/home_page.dart';
import 'package:navigasi_dan_rute/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomePage.routeName,
    routes: {
      HomePage.routeName: (context) => HomePage(),
      ItemPage.routeName: (context) => const ItemPage(),
    },
  ));
}
