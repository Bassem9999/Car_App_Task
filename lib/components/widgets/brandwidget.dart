import 'package:flutter/material.dart';

class BrandWidget extends StatelessWidget {
  String text;
  String image;
  BrandWidget({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red, width: 2),
          ),
          child: Container(
            height: 50,
            width: 70,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.fitHeight),
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )
      ],
    );
  }
}
