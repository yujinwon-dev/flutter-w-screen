import 'package:flutter/material.dart';

class EntranceItem extends StatelessWidget {
  final String entranceNum;
  final String entrancePhone;

  const EntranceItem({
    super.key,
    required this.entranceNum,
    required this.entrancePhone,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(height: 20),
        Text(entranceNum,
            style: TextStyle(
              fontSize: 60,
              color: Color(0XFFF85A40),
              fontWeight: FontWeight.w800,
            )),
        SizedBox(height: 15),
        Text(entrancePhone,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            )),
        SizedBox(height: 20),
      ],
    ));
  }
}
