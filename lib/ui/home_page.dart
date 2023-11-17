import 'package:flutter/material.dart';
import 'package:linkedin/ui/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBarCustom(),
      ),
      body: SizedBox.shrink(),
      bottomNavigationBar:
          BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
            backgroundColor: const Color(0xff031A31),
            type: BottomNavigationBarType.fixed, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined), label: "MyNetwork"),
        BottomNavigationBarItem(icon: Icon(Icons.add_outlined), label: "Post"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: "Notification"),
        BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined), label: "Jobs"),
      ]),
    );
  }
}
