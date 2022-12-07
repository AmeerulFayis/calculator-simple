import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/theme.dart';
import '../home_screen_controller.dart';

class ButtonSecondRow extends StatelessWidget {
  const ButtonSecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("7");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "7",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(18.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("8");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "8",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.numberClick("9");
            },
            elevation: 2.0,
            fillColor: whitecolor,
            child: Text(
              "9",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
          ),
          columnpadding,
          RawMaterialButton(
            onPressed: () {
              homeController.actionClick("*");
            },
            elevation: 2.0,
            fillColor: orangecolor,
            child: Text(
              "×",
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
