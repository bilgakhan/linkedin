import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff031A31),
      centerTitle: true,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      actions: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Search",
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: const Icon(Icons.qr_code_2_outlined),
              ),
            ),
          ),
        ),
        const Icon(
          Icons.message_outlined,
          size: 35,
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}