import 'package:darts/models/points.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models/username_model.dart';
import 'screens/home_screen.dart';

void main() async {
  Get.put<Controller>(Controller());
  Get.put<PointsModel>(PointsModel());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: HomeScreen(),
      );
  }
}
