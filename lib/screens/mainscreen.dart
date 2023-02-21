import 'package:flutter/material.dart';
import '../components/constants/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  changeNavBar(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          changeNavBar(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: "Car Info",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
        ],
      ),
      body: screens[index],
    );
  }
}
