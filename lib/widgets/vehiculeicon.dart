import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class VehicleIcon extends StatelessWidget {
  final int vehicule;

  VehicleIcon({required this.vehicule});

  @override
  Widget build(BuildContext context) {
    switch (vehicule) {
      case 0:
        return Icon(CupertinoIcons.car_fill, size: 30, color: Color(0xff038C7F));
      case 1:
        return Icon(Icons.pedal_bike, size: 30, color: Color(0xff038C7F));
      case 2:
        return Icon(Icons.local_shipping, size: 30, color: Color(0xff038C7F));
      case 3:
        return Icon(Icons.directions_run, size: 30, color: Color(0xff038C7F));
      default:
        return Icon(Icons.error, size: 30, color: Colors.grey);
    
    }
  }
}