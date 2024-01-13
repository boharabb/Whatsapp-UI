
import 'package:flutter/material.dart';

Column builmessageAvatar(
    String message, String name, String time, int unreads, String img) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 29,
                  backgroundImage: Image.asset("assets/images/$img").image,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [Text(name), const SizedBox(height: 5,), Text(message)],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(time),const SizedBox(height: 5,),
                if (unreads>0)
                CircleAvatar(radius: 15,
                  backgroundColor: Colors.green,
                  child: Text(unreads.toString(), style: TextStyle(color: Colors.white, fontSize: 13),)),
              ],
            ),
          ),
        ],
      ),
      const Divider(
        indent: 2.1,
      ),const  SizedBox(height: 10,)
    ],
  );
}


