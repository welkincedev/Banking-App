import 'package:flutter/material.dart';

Widget ContactCard(String name) {

  return Container(
    alignment: Alignment.center,
    width: 100,
    padding: const EdgeInsets.all(16),height: 200,
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue.shade100,
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}