
import 'package:flutter/material.dart';

Padding buildContextAvatar(String name, String filename) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 29,
            backgroundImage: Image.asset("assets/images/$filename").image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    ),
  );
}
