import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip_app/utils/constants.dart';
import 'package:squip_app/view/user/profile_screen.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final Completer<GoogleMapController> _controller = Completer();

  List<Marker> _markers = <Marker>[];

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.6844, 73.0479),
    zoom: 14,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _markers.add(const Marker(
        markerId: MarkerId('SomeId'),
        position: LatLng(37.42796133580664, -122.085749655962),
        infoWindow: InfoWindow(title: 'The title of the marker')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.normal,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          trafficEnabled: false,
          rotateGesturesEnabled: true,
          buildingsEnabled: true,
          markers: Set<Marker>.of(_markers),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          focusColor: ColorConstants.greenColor,
          backgroundColor: ColorConstants.greenColor,
          onPressed: () {
            Get.to(ProfileScreen());
          }),
    );
  }
}
