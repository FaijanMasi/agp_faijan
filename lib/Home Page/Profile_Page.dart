import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3 - 25,
            decoration: const BoxDecoration(
              // color: Color(0xff27458f),
              gradient: LinearGradient(
                colors: [
                  Color(0xff1e3eda),
                  Color(0xffbd28c5),
                  Color(0xfff79a15)
                ], // Start and end colors
                begin: Alignment.topLeft, // Gradient start direction
                end: Alignment.bottomRight, // Gradient end direction
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.5 - 50,
                // bottom: MediaQuery.of(context).size.width * 0.5,
                child: const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/images/Profile.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
