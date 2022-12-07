import 'package:calculator/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_controller.dart';

class ButtonFirstRow extends StatelessWidget {
  const ButtonFirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              homeController.clearText();
              homeController.actionClick("").toString();
            },
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 270),
              child: Container(
                decoration: BoxDecoration(
                    color: whitecolor, borderRadius: BorderRadius.circular(40)),
                height: 80,
                child: Center(
                  child: Text(
                    "AC",
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
              homeController.actionClick("/");
            },
            elevation: 2.0,
            fillColor: orangecolor,
            child: Text(
              "÷",
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
