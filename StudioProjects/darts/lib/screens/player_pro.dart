import 'package:flutter/material.dart';

import '../models/user.dart';

class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    User user1 = User(1, 'PLayer 1', 0);
    User user2 = User(2, 'Player 2', 0);
    User user3 = User(3, 'Player 3', 0);
    User user4 = User(4, 'Player 4', 0);
    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Legs:0',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // SizedBox(
              //   width: 80,
              // ),
              Text(
                'player1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              // SizedBox(
              //   width: 80,
              // ),
              Text(
                'data',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),

          Center(
            child: Text(
              '501',
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
          Center(
            child: Container(
              width: 250,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
