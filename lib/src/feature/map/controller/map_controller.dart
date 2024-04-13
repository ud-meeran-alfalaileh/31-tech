import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  // Future<void> addCustomMarker() async {
  //   ImageConfiguration configuration =
  //       const ImageConfiguration(size: Size(100, 100));
  //   await BitmapDescriptor.fromAssetImage(
  //           configuration, "assets/img/car_map.png")
  //       .then((icon) {
  //     markerIcon. = icon;
  //   });
  // }
}
