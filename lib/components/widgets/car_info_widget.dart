import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarInfoWidget extends StatelessWidget {
  String text1;
  Widget text2;
  Widget icon;
  CarInfoWidget({required this.text1, required this.text2, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 243, 241, 241)),
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          icon,
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 100,
            child: Text(
              text1,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 70,
          ),
          text2
        ],
      ),
    );
  }
}
