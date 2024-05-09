import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({super.key});

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '5',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '6',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '8',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '9',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Bust',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      '0',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 103,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff212328),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Menu',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),

      ],
    ));
  }
}
