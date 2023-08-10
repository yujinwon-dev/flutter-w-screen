import 'package:flutter_w_screen/models/restaurant_model.dart';
import 'package:flutter_w_screen/models/waiting_item_model.dart';

class WaitingListResponse {
  final List<WaitingItemModel> list;
  final RestaurantModel restaurant;
  // : list = List<WaitingItemModel>.from(json['list']),
  WaitingListResponse.fromJson(Map<String, dynamic> json)
      : list = List<WaitingItemModel>.from(
            json['list'].map((model) => WaitingItemModel.fromJson(model))),
        restaurant = RestaurantModel.fromJson(json['restaurant']);
}
