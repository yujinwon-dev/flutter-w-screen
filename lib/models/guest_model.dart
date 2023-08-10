class Guest {
  final String name, phone;

  Guest({required this.name, required this.phone});

  Guest.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        phone = json['phone'];
}
