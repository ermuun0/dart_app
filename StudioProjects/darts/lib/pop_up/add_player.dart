
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../models/user.dart';

class AddPlayer extends StatefulWidget {
  final User user;
  final void Function(String) onSubmitted;
  const AddPlayer({super.key, required this.onSubmitted, required this.user});

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  final TextEditingController _textEditingController = TextEditingController();

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
            widget.user.userName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      onPressed: () {
        openDialog(widget.user, _textEditingController);
      },
    );
  }

  Future openDialog(User user, TextEditingController _textEditingController) => showDialog(
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
                    setState(() {
                      user.userName = value;
                    });
                  },
                  controller: _textEditingController,
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
                      setState(() {
                        widget.user.userName = _textEditingController.text;
                        print(widget.user.userName);
                      });
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
