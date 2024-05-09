import 'package:flutter/material.dart';

class Pro extends StatefulWidget {
  const Pro({super.key});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0))),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
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
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              '501',
              style: TextStyle(color: Colors.white, fontSize: 105),
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
