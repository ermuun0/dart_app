import 'package:darts/pop_up/menu.dart';
import 'package:flutter/material.dart';

class NumericKeypad extends StatefulWidget {
  final TextEditingController controller;

  const NumericKeypad(
      {super.key, required this.controller});

  @override
  State<NumericKeypad> createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<NumericKeypad> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
              ],
            ),
            Row(
              children: [
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
              ],
            ),
            Row(
              children: [
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
              ],
            ),
            Row(
              children: [
                _buildButton(''),
                _buildButton('0'),
                _buildButton('⌫', onPressed: _backspace),
              ],
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 140,
              width: 102,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff212328),
                  shape: RoundedRectangleBorder(),
                ),
                onPressed: () {
Menu();
                },
                child:Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ),
            ),
            SizedBox(
              height: 140,
              width: 102,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff212328),
                    shape: RoundedRectangleBorder(),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        )


      ],
    );
  }

  // Individual keys
  Widget _buildButton(String text, {VoidCallback? onPressed}) {
    return SizedBox(
        height: 70,
        width: 103,
        child: TextButton(
          onPressed: onPressed ?? () => _input(text),
          child: Text(text,
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),

    );
  }

  void _input(String text) {
    final value = widget.controller.text + text;
    widget.controller.text = value;
  }

  void _backspace() {
    final value = widget.controller.text;
    if (value.isNotEmpty) {
      widget.controller.text = value.substring(0, value.length - 1);
    }
  }
}