import 'package:calculator/presentation/homescreen/home_screen_controller.dart';
import 'package:calculator/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculationResult extends StatelessWidget {
  const CalculationResult({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();

    return AnimatedBuilder(
      animation: homeController,
      builder: (BuildContext context, Widget? child) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 200,
            ),
            height: 400,
            width: MediaQuery.of(context).size.width - 20,
            child: Text(
              homeController.result,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 40, color: whitecolor),
            ),
          ),
        );
      },
    );
  }
}
