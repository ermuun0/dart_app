import 'package:flutter/material.dart';

class First extends StatefulWidget {
  final void Function(int) onSubmitted;
  const First({super.key, required this.onSubmitted});

  @override
  State<First> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<First> {
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
          _textEditingController.text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      onPressed: () {
        openDialog(_textEditingController);
      },
    );
  }

  Future openDialog(TextEditingController _textEditingController) => showDialog(
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
                  onSubmitted: (String value) {},
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
          ),
        ),
      );
}
