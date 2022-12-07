import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../theme/theme.dart';
import '../home_screen_controller.dart';

class ButtonThirdRow extends StatelessWidget {
  const ButtonThirdRow({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("4");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "4",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(18.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("5");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "5",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("6");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "6",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.actionClick("-");
            },
            elevation: 2.0,
            fillColor: orangecolor,
            child: Text(
              "-",
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
