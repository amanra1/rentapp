// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Image(
          image: const NetworkImage(
            'https://i.pinimg.com/originals/b3/f5/24/b3f52409bedaeea79e06d05ae6d89315.jpg',
          ),
          height: MediaQuery.of(context).size.height * (0.5),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
      ),
      bottomSheet: Container(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: MediaQuery.of(context).size.height * (0.5),
          child: ListView(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: []),
        ),
      ),
    );
  }
}
