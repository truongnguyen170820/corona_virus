import 'package:corona_virus/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeView extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.linearToSrgbGamma(),
              image: NetworkImage(
                  "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Corona Virus"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Obx(() => (controller.data() == null)
              ? CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SizedBox(height: 100),
                    Text(
                      "Total Confirmed",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '${controller.data.value.global.totalConfirmed}',
                      style:
                      TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Total Deaths",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '${controller.data.value.global.totalDeaths}',
                      style:
                      TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OutlineButton(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 3,
                      ),
                      shape: StadiumBorder(),
                      onPressed: () {
                        Get.toNamed('/country');
                      },
                      child: Text(
                        "Fetch by country",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
        ),
      ),
    );
  }
}
