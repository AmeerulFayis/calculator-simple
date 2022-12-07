import 'package:calculator/presentation/homescreen/components/buttons_fifth_row.dart';
import 'package:calculator/presentation/homescreen/components/buttons_fourth_row.dart';
import 'package:calculator/presentation/homescreen/components/buttons_second_row.dart';
import 'package:calculator/presentation/homescreen/components/buttons_third_row.dart';
import 'package:calculator/presentation/homescreen/components/result.dart';
import 'package:calculator/presentation/homescreen/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'components/buttons_first_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homController = Get.find();
    return AnimatedBuilder(
      animation: homController,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              CalculationResult(),
              ButtonFirstRow(),
              ButtonSecondRow(),
              ButtonThirdRow(),
              ButtonFourthRow(),
              ButtonFifthRow()
            ],
          ),
        );
      },
    );
  }
}
