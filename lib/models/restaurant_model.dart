class RestaurantModel {
  final String name, scope;
  final bool isCWType, isWType, useWaitingConfirmCode;

  RestaurantModel(
      {required this.name,
      required this.scope,
      required this.isCWType,
      required this.isWType,
      required this.useWaitingConfirmCode});

  RestaurantModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        scope = json['scope'],
        isCWType = json['isCWType'],
        isWType = json['isWType'],
        useWaitingConfirmCode = json['useWaitingConfirmCode'];
}
