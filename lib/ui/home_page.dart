import 'package:flutter/material.dart';
import 'package:linkedin/ui/screens/home_screen.dart';
import 'package:linkedin/ui/screens/jobs_screen.dart';
import 'package:linkedin/ui/screens/my_network_screen.dart';
import 'package:linkedin/ui/screens/notification_screen.dart';
import 'package:linkedin/ui/screens/post_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [
    const HomeScreen(),
    const MyNetworkScreen(),
    const PostScreen(),
    const NotificationScreen(),
    const JobsScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (v) {
            setState(() {
              currentIndex = v;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: const Color(0xff031A31),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: "MyNetwork",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined),
              label: "Post",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center_outlined),
              label: "Jobs",
            ),
          ]),
    );
  }
}
