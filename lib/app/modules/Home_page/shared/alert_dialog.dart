import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SharedClass{
  void showSettingsAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Location Permission Required'),
          content: Text('Please go to app settings and enable location permission.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the alert dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                openAppSettings(); // Open app settings
                Navigator.pop(context); // Close the alert dialog
              },
              child: Text('Open Settings'),
            ),
          ],
        );
      },
    );
  }
}
