import 'package:flutter/material.dart';
import 'package:flutter_w_screen/widgets/entrance_item.dart';
import 'dart:math' as math;

import 'package:flutter_w_screen/widgets/waiting_num.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget headerSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '네모네모의 철판 대창 볶음',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        '02:24',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  Widget tableSection = SizedBox(
    height: 432,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    gradient: LinearGradient(colors: [
                      Color(0xffff4c32),
                      Color(0xffffe86a),
                    ], transform: GradientRotation(math.pi / 1.8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(0, 5),
                        blurRadius: 3,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 0,
                        ),
                        child: Text(
                          '입장 안내',
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Table(children: [
                  TableRow(
                    children: [
                      EntranceItem(
                        entranceNum: '046',
                        entrancePhone: '3456',
                      ),
                      EntranceItem(
                        entranceNum: '047',
                        entrancePhone: '1349',
                      ),
                      EntranceItem(
                        entranceNum: '048',
                        entrancePhone: '1425',
                      ),
                      EntranceItem(
                        entranceNum: '049',
                        entrancePhone: '4352',
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      EntranceItem(
                        entranceNum: '050',
                        entrancePhone: '2546',
                      ),
                      EntranceItem(
                        entranceNum: '051',
                        entrancePhone: '1234',
                      ),
                      EntranceItem(
                        entranceNum: '052',
                        entrancePhone: '4564',
                      ),
                      EntranceItem(
                        entranceNum: '053',
                        entrancePhone: '5678',
                      ),
                    ],
                  ),
                ])
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(children: [
              Container(
                width: 256,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 5),
                      blurRadius: 3,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 0,
                      ),
                      child: Text('대기 목록',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          )),
                    ),
                  ],
                ),
              ),
              WaitingNum(
                number: '054',
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Color(0xff979797),
                indent: 10,
                endIndent: 10,
              ),
              WaitingNum(
                number: '055',
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Color(0xff979797),
                indent: 10,
                endIndent: 10,
              ),
              WaitingNum(
                number: '056',
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Color(0xff979797),
                indent: 10,
                endIndent: 10,
              ),
              WaitingNum(
                number: '057',
              ),
            ]),
          ),
        )
      ],
    ),
  );

  Widget footerSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '제휴문의: 02-552-9045 / 1899 - 9195',
        style: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
      ),
      Text(
        'ver.02.24',
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF101225),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 31,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                headerSection,
                SizedBox(
                  height: 23,
                ),
                tableSection,
                SizedBox(
                  height: 20,
                ),
                AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Image.asset('images/ad.jpg', fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 12,
                ),
                footerSection,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
