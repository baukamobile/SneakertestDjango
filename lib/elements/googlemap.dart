import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  CustomGoogleMap({Key? key}) : super(key: key);

  static const LatLng _center = const LatLng(43.2380, 76.8829);

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}
class _CustomGoogleMapState extends State<CustomGoogleMap> {
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green.shade200,
                height: 700,
                width: double.maxFinite,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: CustomGoogleMap._center,
                    zoom: 11.0,
                  ),
                ),
              ),
      ),
    );
  }
}
