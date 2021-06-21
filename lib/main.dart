import 'package:corona_virus/binding/home_binding.dart';
import 'package:corona_virus/view/country_view.dart';
import 'package:corona_virus/view/detail_view.dart';
import 'package:corona_virus/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeView(), binding: HomeBinding()),
        GetPage(name: '/', page: () => CountryPage()),
        GetPage(name: '/', page: () => DetailsPage())
      ],
    );
  }
}