import 'package:flutter/material.dart';
import 'package:water_can/screens/cart.dart';
import 'package:water_can/screens/feeds.dart';
import 'package:water_can/screens/home.dart';
import 'package:water_can/screens/search.dart';
import 'package:water_can/screens/user_info.dart';
import 'package:water_can/controllers/bottomnav_bar_controller.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import 'package:water_can/controllers/pagesController.dart';


class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  // int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Feeds(),
    Cart(),
    Search(),
    UserInfo(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Obx(
                  () =>
                  GNav(
                    rippleColor: Colors.teal,
                    hoverColor: Colors.blue,
                    gap: 8,
                    activeColor: Colors.black,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.white,
                    color: Colors.black,
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        backgroundColor: Colors.white,
                        iconColor: Colors.black,
                        textColor: Colors.black,
                        iconActiveColor: Colors.black,

                      ),
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        backgroundColor: Colors.white,
                        iconColor: Colors.black,
                        textColor: Colors.black,
                        iconActiveColor: Colors.black,

                      ),
                      // GButton(
                      //   icon: LineIcons.indianRupeeSign,
                      //   text: 'Fees',
                      // ),
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        backgroundColor: Colors.white,
                        iconColor: Colors.black,
                        textColor: Colors.black,
                        iconActiveColor: Colors.black,

                      ),
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        backgroundColor: Colors.white,
                        iconColor: Colors.black,
                        textColor: Colors.black,
                        iconActiveColor: Colors.black,

                      ),
                    ],
                    selectedIndex: BottomNavBarController.instance.selectedIndex
                        .value,
                    onTabChange: (index) {
                      setState(() {
                        BottomNavBarController.instance.selectedIndex.value =
                            index;
                        if (index == 0) {
                          PageViewController.instance.controller.jumpToPage(0);
                        }
                        if (index == 1) {
                          PageViewController.instance.controller.jumpToPage(1);
                        }
                        if (index == 2) {
                          PageViewController.instance.controller.jumpToPage(2);
                        }
                        if (index == 3) {
                          PageViewController.instance.controller.jumpToPage(3);
                        }
                        // index == 1 ?? pageViewController.controller.jumpToPage(1);
                        // index == 2 ?? pageViewController.controller.jumpToPage(2);
                        // index == 3 ?? pageViewController.controller.jumpToPage(3);
                        print(index);
                      });
                    },
                  ),
            ),
          ),
        ),
      ),
    );
  }
}