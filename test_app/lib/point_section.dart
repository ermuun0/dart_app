import 'package:flutter/material.dart';
import 'package:test_app/models/user.dart';

import 'home_screen.dart';

class Points extends StatefulWidget {
  final User user;
  const Points(this.user, {super.key});

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  late User user;
  @override
  void initState() {
    user = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212328),
      body: SafeArea(
          child: Column(children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text('${widget.user.userName}'),
          ])),
    );
  }
}