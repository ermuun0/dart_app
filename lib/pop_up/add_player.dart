import 'package:flutter/material.dart';

import '../home_screen.dart';

class AddPlayer extends StatefulWidget {
  final void Function(String) onSubmitted;
  final int index;
  const AddPlayer({super.key, required this.onSubmitted, required this.index});

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  List<TextEditingController> _controller = [
    for (int i = 1; i < 5; i++) TextEditingController()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff514f57),
      ),
      child: Container(
        width: 120,
        height: 40,
        child: Text(
          '${newUser.userName}',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
      onPressed: () {
        openDialog();
      },
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Center(
            child: Text('Enter player name'),
          ),
          content: Container(
            width: 100,
            height: 300,
            child: Column(
              children: [
                TextField(
                  onSubmitted: (String value) {
                    widget.onSubmitted(value);
                  },
                  controller: _controller[widget.index],
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color(0xff212328),
                    filled: true,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Done',
                          style: TextStyle(),
                        ),
                      ),
                    ))
              ],
            ),
          )));
}
