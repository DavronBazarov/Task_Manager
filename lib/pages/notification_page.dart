import 'package:flutter/material.dart';

class NotificPage extends StatefulWidget {
  const NotificPage({super.key});

  @override
  State<NotificPage> createState() => _NotificPageState();
}

class _NotificPageState extends State<NotificPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Notification Page"),
      ),
    );
  }
}
