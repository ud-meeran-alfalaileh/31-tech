import 'package:flutter/material.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/model/driver_model.dart';

infoDialog(context, Driver driver) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          content: Container(
            height: context.screenHeight * 0.65,
            width: context.screenWidth,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(driver.rideDtart.title),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Ride Start Fuel Picture",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.camera_alt_rounded,
                                color: AppTheme.lightAppColors.mainTextcolor,
                                size: 15,
                              ),
                              Text(
                                " Taken ${driver.rideDtart.time} PM",
                                style: TextStyle(
                                    fontSize: 8,
                                    color:
                                        AppTheme.lightAppColors.mainTextcolor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: driver.rideEnd != null
                              ? Image.asset(driver.rideEnd!.title)
                              : Center(
                                  child: Text(
                                  "Not Yet",
                                  style: TextStyle(
                                      color: AppTheme
                                          .lightAppColors.mainTextcolor),
                                )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Ride End Fuel Picture",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.camera_alt_rounded,
                                color: AppTheme.lightAppColors.mainTextcolor,
                                size: 15,
                              ),
                              Text(
                                "Not Taken Yet",
                                style: TextStyle(
                                    fontSize: 8,
                                    color:
                                        AppTheme.lightAppColors.mainTextcolor),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                infoRow("Went to:", driver.wentTo),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Went at:", driver.wentAt),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Ordered at:", driver.orderAt),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Ordered by:", driver.orderBy),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Accepted By:", driver.acceptedAt),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Accepted at:", driver.acceptedBy),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Car:", driver.carType),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Driver Number:", driver.driverNumber),
                const SizedBox(
                  height: 10,
                ),
                infoRow("Ordered Number:", driver.orderNumber),
              ],
            ),
          ));
    },
  );
}

infoRow(title, subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,
          style: TextStyle(
            color: AppTheme.lightAppColors.mainTextcolor,
            fontSize: 12,
          )),
      Text(subtitle,
          style: const TextStyle(
              color: Color.fromARGB(255, 144, 144, 144),
              fontSize: 12,
              fontWeight: FontWeight.w600)),
    ],
  );
}
