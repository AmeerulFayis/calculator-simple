import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../theme/theme.dart';
import '../home_screen_controller.dart';

class ButtonFourthRow extends StatelessWidget {
  const ButtonFourthRow({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("1");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "1",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(18.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("2");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "2",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("3");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "3",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.actionClick("+");
            },
            elevation: 2.0,
            fillColor: orangecolor,
            child: Text(
              "+",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: whitecolor),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
        ],
      ),
    );
  }
}
