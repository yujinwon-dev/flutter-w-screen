import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_w_screen/models/restaurant_model.dart';
import 'package:flutter_w_screen/models/waiting_item_model.dart';
import 'package:flutter_w_screen/services/api_service.dart';
import 'package:flutter_w_screen/widgets/header_section.dart';
import 'package:flutter_w_screen/widgets/table_section.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<WaitingItemModel> waitList = [];
  var restaurant = RestaurantModel(
      name: '',
      scope: '',
      isCWType: false,
      isWType: false,
      useWaitingConfirmCode: false);
  bool isLoading = true;

  void waitForWaitList() async {
    dynamic response = await ApiService.getWaitingList();
    waitList = response.list;
    restaurant = response.restaurant;
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWaitList();
  }

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
    print(restaurant.name);
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
                HeaderSection(
                  restaurantName: restaurant.name,
                ),
                SizedBox(
                  height: 23,
                ),
                TableSection(
                  waitList: waitList,
                ),
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
