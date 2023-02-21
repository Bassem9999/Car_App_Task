import 'package:car_app_task/components/constants/constants.dart';
import 'package:car_app_task/components/widgets/carwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/widgets/brandwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(gradient: gradiantColor),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  "assets/icons/Home - menu.svg",
                  width: 25,
                ),
                const Spacer(),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      height: 23,
                      width: 23,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: const Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: brands.length,
                  itemBuilder: (context, index) => BrandWidget(
                      text: brands[index]['text'],
                      image: brands[index]['image']))),
          SizedBox(
            height: 200,
            child: Image.asset(
              'assets/images/Image 6.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Color.fromARGB(255, 118, 108, 153),
                  ),
                  label: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "ابحث عن سيارتك",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 118, 108, 153),
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: appcolor, borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "امريكي",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: 40,
                width: 100,
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: appcolor, borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "اوروبي",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
              Expanded(
                  child: Container(
                height: 40,
                width: 100,
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: appcolor, borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "اسيوي",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 600,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: cars.length,
              itemBuilder: (context, index) => CarWidget(
                image: cars[index]['image'],
              ),
            ),
          ),
          SizedBox(
            height: 160,
            child: Image.asset(
              "assets/images/Image 5.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
