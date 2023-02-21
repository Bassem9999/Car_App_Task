import 'package:car_app_task/components/widgets/carwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/constants/constants.dart';
import '../components/widgets/car_info_widget.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView(
        children: [
          SizedBox(
            height: 280,
            child: Stack(
              children: [
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/Image 1.png",
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 209, 207, 207)
                              .withOpacity(0.6),
                          shape: BoxShape.circle),
                      child: IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                    )),
                Positioned(
                    top: 10,
                    left: 80,
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 209, 207, 207)
                              .withOpacity(0.6),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/Car Page - Share.svg',
                        width: 10,
                      ),
                    )),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 209, 207, 207)
                              .withOpacity(0.6),
                          shape: BoxShape.circle),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    )),
                Positioned(
                  bottom: 20,
                  right: 50,
                  left: 50,
                  child: Container(
                    height: 80,
                    width: 300,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 225, 225, 225),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 7,
                                ),
                                SvgPicture.asset(
                                    "assets/icons/Car Page - Slindr.svg",
                                    width: 40),
                                Text(
                                  'المحرك - سلندر',
                                  style:
                                      TextStyle(color: appcolor, fontSize: 12),
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  '6',
                                  style: TextStyle(
                                      color: appcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 225, 225, 225),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                SvgPicture.asset("assets/icons/Home - Ad2.svg",
                                    width: 30),
                                Text(
                                  'سنةالصنع',
                                  style: TextStyle(color: appcolor),
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  '2019',
                                  style: TextStyle(
                                      color: appcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 225, 225, 225),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 7,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/Home - Ad3.svg",
                                  width: 28,
                                ),
                                Text(
                                  'الممشى',
                                  style: TextStyle(color: appcolor),
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  '2000',
                                  style: TextStyle(
                                      color: appcolor,
                                      fontWeight: FontWeight.bold),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "يوكن بحالة جيدة",
                  style: TextStyle(color: appcolor, fontSize: 20),
                ),
                const Spacer(),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: Stack(
                    children: [
                      Text(
                        "8,700",
                        style: TextStyle(
                          color: appcolor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 5,
                        child: Text(
                          "د.ك",
                          style: TextStyle(
                            color: appcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 212, 114, 107),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  "assets/icons/Car Page - Makfula.svg",
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "مكفولة حتى 70000 كم",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CarInfoWidget(
            text1: "اللون الخارجى",
            text2: const Text(
              "ابيض",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.format_paint_outlined),
          ),
          CarInfoWidget(
            text1: "اللون الداخلى",
            text2: const Text(
              "بيج",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.format_paint_outlined),
          ),
          CarInfoWidget(
            text1: "نوع المقعد",
            text2: const Text(
              "مخمل",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.chair_alt),
          ),
          CarInfoWidget(
            text1: "فتحة سقف",
            text2: const Icon(Icons.done),
            icon: const Icon(Icons.roofing),
          ),
          CarInfoWidget(
            text1: "كاميرا خلفية",
            text2: const Icon(Icons.done),
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          CarInfoWidget(
            text1: "سينسر",
            text2: const Text(
              "امامى - خلفى",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.sensors),
          ),
          CarInfoWidget(
            text1: "سليندر",
            text2: const Text(
              "6",
              style: TextStyle(fontSize: 20),
            ),
            icon: SvgPicture.asset(
              "assets/icons/Car Page - Slindr.svg",
              width: 30,
              color: Colors.black,
            ),
          ),
          CarInfoWidget(
            text1: "ناقل حركة",
            text2: const Text(
              "اوتوماتيك",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.transform),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 170,
            padding: const EdgeInsets.all(8),
            child: Text(
              carInfo,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 228, 228),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 2),
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/Image 1.png"))),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "يوكن للسيارات المعتمدة",
                  style: TextStyle(fontSize: 16, color: appcolor),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  "كل السيارات",
                  style: TextStyle(fontSize: 16, color: appcolor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 210,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 2,
              itemBuilder: (context, index) =>
                  CarWidget(image: "assets/images/Image 1.png"),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Color.fromARGB(255, 196, 241, 199).withOpacity(0.5)),
                  child: SvgPicture.asset(
                    "assets/icons/Car Page - Call.svg",
                    width: 25,
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(2.5),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          Color.fromARGB(255, 218, 182, 240).withOpacity(0.5)),
                  child: SvgPicture.asset(
                    "assets/icons/Car Page - Chat by WHatsapp.svg",
                    width: 25,
                  ),
                )),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 70,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: appcolor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        //Padding(
                        SvgPicture.asset(
                          "assets/icons/Car Page - Location.svg",
                          color: Colors.white,
                          width: 27,
                        ),
                        //  ),
                        Text(
                          "موقع السيارة",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 70,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: appcolor)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                            "assets/icons/Car Page - Book.svg",
                            color: appcolor,
                            width: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "احجز سيارة",
                          style: TextStyle(fontSize: 17, color: appcolor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
