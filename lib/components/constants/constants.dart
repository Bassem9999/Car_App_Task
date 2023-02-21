import 'package:flutter/material.dart';

import '../../screens/carscreen.dart';
import '../../screens/homescreen.dart';

Color appcolor = Color.fromARGB(255, 76, 82, 95);

LinearGradient gradiantColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[appcolor, Color.fromARGB(255, 142, 151, 167)]);

int index = 1;
List<Widget> screens = [const CarScreen(), const HomeScreen()];

String carInfo =
    "رنجات المونيوم 18 انش اسود وكروم - ديكور خشب + كروم - مقعد السائق الكهربائى - دواسات جانبية - تحكم بالمقود مع تعديل يدوى - نظام المرتفعات - سايد بريك كهربائى - مراة داخليك اوتو - شاحن كهربائى - 7 مقاعد خلفى والوسطى قابل للانغلاق - جناح خلفى = عواكس خلفية سيرفيس منتظم بالوكالة";

List<Map> brands = [
  {'text': "جيلى", 'image': "assets/images/Image 1.png"},
  {'text': "بى ام دابليو", 'image': "assets/images/Image 11.png"},
  {'text': "تويوتا", 'image': "assets/images/Image 6.png"},
  {'text': "جيلى", 'image': "assets/images/Image 1.png"},
  {'text': "بى ام دابليو", 'image': "assets/images/Image 11.png"},
  {'text': "تويوتا", 'image': "assets/images/Image 6.png"},
];

List<Map> cars = [
  {'image': "assets/images/Image 1.png"},
  {'image': "assets/images/Image 11.png"},
  {'image': "assets/images/Image 1.png"},
  {'image': "assets/images/Image 11.png"},
  {'image': "assets/images/Image 1.png"},
  {'image': "assets/images/Image 11.png"},
];
