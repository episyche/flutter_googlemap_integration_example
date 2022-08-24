import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class CurrentLocation extends StatefulWidget {
  var Lat ;
  var Lng ;
  CurrentLocation(this.Lat , this.Lng);

  @override
  State<CurrentLocation> createState() => _CurrentLocation(this.Lat , this.Lng);
}

class _CurrentLocation extends State<CurrentLocation> {
  var Lat ;
  var Lng ;
  _CurrentLocation(this.Lat , this.Lng);

  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Maps'),),
      body:  GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(double.parse(Lat) , double.parse(Lng)),
          zoom: 18.0,
        ),
      ) ,
    );
  }
}
