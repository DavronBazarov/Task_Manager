import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/ic_menu.png",
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
