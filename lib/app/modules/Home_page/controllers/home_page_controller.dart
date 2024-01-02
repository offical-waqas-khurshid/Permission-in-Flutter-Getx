import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permissions_in_flutter/app/modules/Home_page/shared/alert_dialog.dart';

class HomePageController extends GetxController {
  SharedClass sharedClass = SharedClass();
  RxBool locationPermissionGranted = false.obs;


  /// Location Permission
  Future<void> requestLocationPermission(BuildContext context) async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      print('Location Permission Granted');
    } else if (status.isDenied) {
      print('Location Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }

  /// Contact Permission
  Future<void> requestContactPermission(BuildContext context) async {
    var status = await Permission.contacts.request();
    if (status.isGranted) {
      print('contacts Permission Granted');
    } else if (status.isDenied) {
      print('contacts Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }

  /// Camera Permission
  Future<void> requestCameraPermission(BuildContext context) async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      print('camera Permission Granted');
    } else if (status.isDenied) {
      print('camera Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }

  /// Location Always Permission
  Future<void> requestLocationAlwaysPermission(BuildContext context) async {
    var status = await Permission.locationAlways.request();
    if (status.isGranted) {
      print('locationAlways Permission Granted');
    } else if (status.isDenied) {
      print('locationAlways Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }

  /// MicroPhone Permission
  Future<void> requestMicroPhonePermission(BuildContext context) async {
    var status = await Permission.microphone.request();
    if (status.isGranted) {
      print('microphone Permission Granted');
    } else if (status.isDenied) {
      print('microphone Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }
  /// Phone Permission
  Future<void> requestPhonePermission(BuildContext context) async {
    var status = await Permission.phone.request();
    if (status.isGranted) {
      print('phone Permission Granted');
    } else if (status.isDenied) {
      print('phone Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }


  /// Photo Permission
  Future<void> requestPhotoPermission(BuildContext context) async {
    var status = await Permission.photos.request();
    if (status.isGranted) {
      print('photos Permission Granted');
    } else if (status.isDenied) {
      print('photos Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }


  /// Storage Permission
  Future<void> requestStoragePermission(BuildContext context) async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      print('Storage Permission Granted');
    } else if (status.isDenied) {
      print('Storage Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }

  /// sms Permission
  Future<void> requestSmsPermission(BuildContext context) async {
    var status = await Permission.sms.request();
    if (status.isGranted) {
      print('sms Permission Granted');
    } else if (status.isDenied) {
      print('sms Permission Denied');
    } else if (status.isPermanentlyDenied) {
      // Permission denied permanently, show a message
      sharedClass.showSettingsAlertDialog(context);
    }
  }

}
