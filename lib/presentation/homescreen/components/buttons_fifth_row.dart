import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/theme.dart';
import '../home_screen_controller.dart';

class ButtonFifthRow extends StatelessWidget {
  const ButtonFifthRow({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              homeController.numberClick("0").toString();
            },
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 270),
              child: Container(
                decoration: BoxDecoration(
                    color: whitecolor, borderRadius: BorderRadius.circular(40)),
                height: 80,
                child: Center(
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          RawMaterialButton(
            onPressed: () {
              homeController.answerButton();
            },
            elevation: 2.0,
            fillColor: orangecolor,
            child: Text(
              "=",
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
