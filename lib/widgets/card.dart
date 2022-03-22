// Moh. Iqbal Waldan
// MI-2F
// 2031710139

import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({
    Key? key,
    required this.image,
    required this.name,
    required this.year,
  }) : super(key: key);

  final String image;
  final String name;
  final int year;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Image(
              image: AssetImage(image),
            )),
            Expanded(child: Text(name, textAlign: TextAlign.center)),
            Expanded(
              child: Text(
                year.toString(),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
