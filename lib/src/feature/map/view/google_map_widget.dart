import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/driver_icon.dart';
import 'package:tech_31/src/feature/map/controller/map_controller.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({super.key, required this.driver, required this.img});
  final String driver;
  final String img;
  @override
  State<GoogleMapWidget> createState() => GoogleMapWidgetState();
}

class GoogleMapWidgetState extends State<GoogleMapWidget> {
  //init location
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 13.4746,
  );
  final mapController = Get.put(MapController());
//add custom marker to the map
  Future<void> addCustomIcon() async {
    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(180, 80)),
      "assets/img/car_map.png",
    ).then(
      (icon) {
        setState(() {
          mapController.markerIcon = icon;
        });
      },
    );
  }

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              markers: {
                Marker(
                  markerId: const MarkerId('car_marker'),
                  position: const LatLng(37.42796133580664, -122.085749655962),
                  icon: mapController.markerIcon,
                ),
              },
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) async {
                await addCustomIcon();

                mapController.controller.complete(controller);
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 70,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.lightAppColors.maincolor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Row(children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.lightAppColors.primary,
                    radius: 22,
                    backgroundImage: AssetImage(widget.img),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.driver,
                        style: TextStyle(
                            color: AppTheme.lightAppColors.primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            size: 12,
                            color: AppTheme.lightAppColors.mainTextcolor,
                          ),
                          Text(
                            "Current Location:",
                            style: TextStyle(
                              color: AppTheme.lightAppColors.mainTextcolor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  DriverIcon(
                      color: const Color(0xff4F4F4F),
                      icon: Icons.phone_enabled,
                      ontap: () {}),
                  SizedBox(
                    width: context.screenWidth * 0.02,
                  ),
                  DriverIcon(
                      color: AppTheme.lightAppColors.subTextcolor,
                      icon: Icons.close,
                      ontap: () {
                        Get.back();
                      }),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
