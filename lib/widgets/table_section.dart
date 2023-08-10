import 'package:flutter/material.dart';
import 'package:flutter_w_screen/models/waiting_item_model.dart';
import 'dart:math' as math;
import 'package:flutter_w_screen/widgets/entrance_item.dart';
import 'package:flutter_w_screen/widgets/waiting_num.dart';

class TableSection extends StatelessWidget {
  final List<WaitingItemModel> waitList;

  TableSection({
    super.key,
    required this.waitList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                        for (int i = 0; i < 4; i++)
                          if (waitList.length > i) ...[
                            EntranceItem(
                              entranceNum:
                                  waitList[i].waitSequenceStatic.toString(),
                              entrancePhone:
                                  waitList[i].guest.phone.substring(7, 11),
                            ),
                          ] else ...[
                            EntranceItem(
                              entranceNum: '',
                              entrancePhone: '',
                            ),
                          ],
                      ],
                    ),
                    TableRow(
                      children: [
                        for (int i = 4; i < 8; i++)
                          if (waitList.length > i) ...[
                            EntranceItem(
                              entranceNum:
                                  waitList[i].waitSequenceStatic.toString(),
                              entrancePhone:
                                  waitList[i].guest.phone.substring(7, 11),
                            ),
                          ] else ...[
                            EntranceItem(
                              entranceNum: '',
                              entrancePhone: '',
                            ),
                          ],
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
                for (int i = 8; i < 12; i++) ...[
                  if (waitList.length > i) ...[
                    WaitingNum(
                      number: waitList[i].waitSequenceStatic.toString(),
                    ),
                  ] else ...[
                    SizedBox(
                      height: 82,
                    ),
                  ],
                  if (i < 11) ...[
                    Divider(
                      thickness: 1,
                      height: 1,
                      color: Color(0xff979797),
                      indent: 10,
                      endIndent: 10,
                    ),
                  ]
                ]
              ]),
            ),
          )
        ],
      ),
    );
  }
}
