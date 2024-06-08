import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:geolocator/geolocator.dart";

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? position;

  fetchpostion() async {
    //~  Will check weather the service location is enabled or not
    bool serviceEnabled;
    //~ Will check if user has granted location permission or not
    LocationPermission permission;
    //~ To get only one of them
    String latitude;

    //~ chcek weather the service is enabled or not
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location Service os disabled');
    }
    //~ Taking permission of the user
    permission = await Geolocator.checkPermission();
    //~ Check if permission is denied
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Location permission is required');
      }
    }
    //~ If the permission is denied forever
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'You denied location permission forever');
    }
    //~ If all the above statements are false then fetch the position of the user
    Position currentposition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentposition;
      latitude = currentposition.altitude.toString();
      // ignore: avoid_print
      print(latitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geo Location'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? 'Location' : position.toString(),
                style: const TextStyle(fontSize: 17)),
            ElevatedButton(
                onPressed: () {
                  fetchpostion();
                },
                child: const Text('Get Location'))
          ],
        ),
      ),
    );
  }
}
