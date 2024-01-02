import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePageController extends GetxController {

  RxBool locationPermissionGranted = false.obs;

  /// Location Permission
  Future<void> requestLocationPermission() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// Contact Permission
  Future<void> requestContactPermission() async {
    var status = await Permission.contacts.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// Camera Permission
  Future<void> requestCameraPermission() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// Location Always Permission
  Future<void> requestLocationAlwaysPermission() async {
    var status = await Permission.locationAlways.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// MicroPhone Permission
  Future<void> requestMicroPhonePermission() async {
    var status = await Permission.microphone.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// Phone Permission
  Future<void> requestPhonePermission() async {
    var status = await Permission.phone.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// Photo Permission
  Future<void> requestPhotoPermission() async {
    var status = await Permission.photos.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// Storage Permission
  Future<void> requestStoragePermission() async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }

  /// sms Permission
  Future<void> requestSmsPermission() async {
    var status = await Permission.sms.request();
    if (status.isGranted) {
      locationPermissionGranted.value = true;
    } else {
      locationPermissionGranted.value = false;
    }
  }
}
