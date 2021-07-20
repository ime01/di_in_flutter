import 'package:di_in_flutter/models/location_model.dart';
import 'package:di_in_flutter/services/location_service.dart';
import 'package:di_in_flutter/services/locator.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class HomeView extends StatelessWidget {

  late LocationModel locationModel;
  String userCurrentLocation = 'Not Found';

  var locationService = getIt<LocationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          locationModel = await locationService.getLocation();

          String lon = locationModel.longitude.toString();
          String lat = locationModel.latitude.toString();

          String userLatLon = '$lat + ' ' $lon';
          userCurrentLocation = userLatLon;
          print('user LATLON $userLatLon');
          print(userCurrentLocation);
        },
        child: Icon(Icons.location_on),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(


            children: [
              Text(
                'Current location displayed in logcat print statment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,),
              )
            ],
          ),
        ),
      ),
    );
  }
}