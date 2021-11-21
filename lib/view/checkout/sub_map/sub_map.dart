import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_at/values/color.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SubMApView extends StatefulWidget {
  const SubMApView({Key? key}) : super(key: key);

  @override
  State<SubMApView> createState() => SubMApViewState();
}

class SubMApViewState extends State<SubMApView> {
  final Completer<GoogleMapController> _controller = Completer();

  // ignore: prefer_const_declarations
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(31.963158, 35.930359),
    zoom: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.colorBorder, width: 1)),
          child: GoogleMap(
            zoomControlsEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}
