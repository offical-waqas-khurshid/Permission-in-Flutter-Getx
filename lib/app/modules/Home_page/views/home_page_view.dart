import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permission Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                  () => Text(
                controller.locationPermissionGranted.value
                    ? 'Location Permission Granted'
                    : 'Location Permission Not Granted',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.requestLocationPermission(),
              child: Text('Request Location Permission'),
            ),
            ElevatedButton(
              onPressed: () => controller.requestCameraPermission(),
              child: Text('Request camera Permission'),
            ),
            ElevatedButton(
              onPressed: () => controller.requestContactPermission(),
              child: Text('Request contact Permission'),
            ),
            ElevatedButton(
              onPressed: () => controller.requestLocationAlwaysPermission(),
              child: Text('Request Location always Permission'),
            ),
            ElevatedButton(
              onPressed: () => controller.requestPhotoPermission(),
              child: Text('Request Photo Permission'),
            ),
            ElevatedButton(
              onPressed: () => controller.requestStoragePermission(),
              child: Text('Request Storage Permission'),
            ),
          ],
        ),
      ),
    );
  }
}
