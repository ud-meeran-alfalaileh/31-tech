class Driver {
  String name;
  String driverImg;
  String location;
  String carType;
  String wentAt;
  String wentTo;
  String orderBy;
  String orderAt;
  String acceptedBy;
  String acceptedAt;
  String driverNumber;
  String orderNumber;
  Img rideDtart;
  Img? rideEnd;
  List<String> action;

  Driver({
    required this.name,
    required this.driverImg,
    required this.location,
    required this.carType,
    required this.acceptedAt,
    required this.acceptedBy,
    required this.action,
    required this.driverNumber,
    required this.orderAt,
    required this.orderBy,
    required this.orderNumber,
    required this.rideDtart,
    this.rideEnd,
    required this.wentAt,
    required this.wentTo,
  });
}

class Img {
  String title;
  String time;
  Img({required this.title, required this.time});
}
