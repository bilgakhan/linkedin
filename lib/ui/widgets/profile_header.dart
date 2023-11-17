import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileHeader extends StatelessWidget {
  String name;
  String activeTime;
  String jobTitle;
  String time;
  ProfileHeader(
      {super.key,
      required this.name,
      required this.activeTime,
      required this.jobTitle,
      required this.time});
  TextStyle style18 = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // title
            Row(
              children: [
                Text(
                  name,
                  style: style18,
                ),
                Text(
                  activeTime,
                  style: style18,
                ),
              ],
            ),

            // job title
            Text(
              jobTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),

            // activity,
            Text(
              time,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
