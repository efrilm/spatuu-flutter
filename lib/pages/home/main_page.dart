import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spatuu/pages/home/home_page.dart';
import 'package:spatuu/shared/thema.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final listPage = [
    const HomePage(),
    const Center(
      child: Text("Discovery"),
    ),
    const Center(
      child: Text("Favorite"),
    ),
    const Center(
      child: Text("Notification"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: listPage[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: otpColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: greyColor,
        currentIndex: currentIndex,
        selectedItemColor: yellowColor,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Icon(
                currentIndex != 0 ? IconlyLight.home : IconlyBold.home,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Icon(
                currentIndex != 1
                    ? IconlyLight.discovery
                    : IconlyBold.discovery,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Icon(
                currentIndex != 2 ? IconlyLight.heart : IconlyBold.heart,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Icon(
                currentIndex != 3
                    ? IconlyLight.notification
                    : IconlyBold.notification,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Icon(
                currentIndex != 4 ? IconlyLight.profile : IconlyBold.profile,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
