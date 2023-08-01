import 'package:flutter/material.dart';

class WaitingNum extends StatelessWidget {
  final String number;

  const WaitingNum({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number,
                style: TextStyle(
                  fontSize: 39,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1,
                  height: 1.0,
                )),
            SizedBox(
              width: 2,
            ),
            Text('번',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                )),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
