import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CuaHang extends StatefulWidget {
  @override
  _CuaHangState createState() => _CuaHangState();
}

class _CuaHangState extends State<CuaHang> {
  static const _inittiaCameraPosition = CameraPosition(
    target: LatLng(10.9531, 106.8025),
    zoom: 17,
  );

  List<Marker> allMarkers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allMarkers.add(
      Marker(
        markerId: MarkerId('App'),
        //draggable: true,
        position: (LatLng(10.9531, 106.8025)),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: 'Ông Bầu'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition: _inittiaCameraPosition,
      markers: Set.from(allMarkers),
    ));
  }
}
