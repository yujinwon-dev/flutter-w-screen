import 'package:flutter_w_screen/models/guest_model.dart';

class WaitingItemModel {
  final String? notificationSendTime;
  final String requestedDate;
  final int idx,
      childCount,
      notificationCount,
      numOfPeople,
      restaurantIdx,
      waitSequence,
      waitSequenceStatic,
      entryQueue;
  final Guest guest;

  WaitingItemModel(
      {required this.idx,
      required this.notificationSendTime,
      required this.requestedDate,
      required this.restaurantIdx,
      required this.childCount,
      required this.notificationCount,
      required this.numOfPeople,
      required this.waitSequence,
      required this.waitSequenceStatic,
      required this.entryQueue,
      required this.guest});

  WaitingItemModel.fromJson(Map<String, dynamic> json)
      : idx = json['idx'],
        notificationSendTime = json['notificationSendTime'],
        requestedDate = json['requestedDate'],
        restaurantIdx = json['restaurantIdx'],
        childCount = json['childCount'],
        notificationCount = json['notificationCount'],
        numOfPeople = json['numOfPeople'],
        waitSequence = json['waitSequence'],
        waitSequenceStatic = json['waitSequenceStatic'],
        entryQueue = json['entryQueue'],
        guest = Guest.fromJson(json['guest']);
}
