import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      bool allowed = await Permission.locationWhenInUse.isGranted;
      if (allowed == false) {
        final PermissionStatus status =
            await Permission.locationWhenInUse.request();
        allowed = status.isGranted;
      }
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
