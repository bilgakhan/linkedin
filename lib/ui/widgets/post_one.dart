import 'package:flutter/material.dart';
import 'package:linkedin/ui/widgets/action_row.dart';
import 'package:linkedin/ui/widgets/profile_header.dart';

class FirstPost extends StatelessWidget {
  const FirstPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 344,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kateryna Luibinskaya and Tatyana \nRomanovalike this",
                style: TextStyle(color: Colors.white, fontSize: 20),
                overflow: TextOverflow.visible,
                softWrap: true,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
          const Divider(color: Colors.white),
          ProfileHeader(
              name: "Nadiya Birbalo ",
              activeTime: "2 st",
              jobTitle: "Software Engeener",
              time: "1 h"),
          const SizedBox(height: 10),

          // post
          const Text(
            "Hello, I am looking for a new career opportunity and would appreciate your support. Thanks in advance for any contact recommendation, advice, or ... see more",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 20),

          // status
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.lightbulb_circle,
                    color: Colors.amber,
                  ),
                  Text(
                    "77",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  )
                ],
              ),
              Text(
                "11 comments",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              )
            ],
          ),
          const Divider(color: Colors.white),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonOne(
                icon: Icons.thumb_up_outlined,
                text: "Like",
              ),
              ButtonOne(
                icon: Icons.comment_outlined,
                text: "Comment",
              ),
              ButtonOne(
                icon: Icons.share_outlined,
                text: "Share",
              ),
              ButtonOne(
                icon: Icons.send_outlined,
                text: "Send",
              )
            ],
          )
        ],
      ),
    );
  }
}
