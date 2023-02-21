import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class CarWidget extends StatelessWidget {
  String image;
  CarWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(4),
      color: const Color.fromARGB(255, 247, 245, 245),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
              width: 220,
              child: Image.asset(
                image,
                fit: BoxFit.fitWidth,
              )),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              color: const Color.fromARGB(255, 220, 219, 219).withOpacity(0.7),
              alignment: Alignment.center,
              child: Text(
                'جي ام سي | يوكن | الفئة الرابعة',
                style: TextStyle(color: appcolor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              height: 70,
              width: 200,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 225, 225, 225),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset('assets/icons/Home - ad1.svg'),
                          Text(
                            'السعر',
                            style: TextStyle(color: appcolor),
                          ),
                          Text(
                            '12,700',
                            style: TextStyle(
                                color: appcolor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 225, 225, 225),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Home - Ad2.svg',
                            color: Color.fromARGB(255, 36, 85, 38),
                          ),
                          Text(
                            'سنةالصنع',
                            style: TextStyle(color: appcolor),
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            '2019',
                            style: TextStyle(
                                color: appcolor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 225, 225, 225),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Home - Ad3.svg',
                            color: Color.fromARGB(255, 173, 121, 43),
                          ),
                          Text(
                            'كم',
                            style: TextStyle(color: appcolor),
                          ),
                          Text(
                            '20000',
                            style: TextStyle(
                                color: appcolor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 225, 225, 225),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Home - Ad4.svg',
                            color: appcolor,
                            width: 20,
                          ),
                          Text(
                            'مكفولة ل',
                            style: TextStyle(color: appcolor),
                          ),
                          Text(
                            '2021',
                            style: TextStyle(
                                color: appcolor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
