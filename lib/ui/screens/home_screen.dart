import 'package:flutter/material.dart';
import 'package:linkedin/ui/widgets/appbar.dart';
import 'package:linkedin/ui/widgets/post_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff031A31),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBarCustom(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView(
          children: [
            FirstPost(),
          ],
        ),
      ),
    );
  }
}
