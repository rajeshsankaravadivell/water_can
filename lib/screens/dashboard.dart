import 'package:flutter/material.dart';
import 'package:water_can/screens/bottomnavBar.dart';



class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: Container(

      ),
    ),
    );
  }
}
