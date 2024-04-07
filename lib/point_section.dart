import 'package:flutter/material.dart';
import 'package:wfa/player_pro.dart';
import 'package:wfa/user.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';

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

  String text = "";

  onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212328),
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Pro(),
            Pro(),
            Text(text,
                style: Theme.of(context).textTheme.headline6?.apply(
                      color: Colors.white,
                      fontSizeFactor: 2,
                    )),
            Container(
              width: 300,
              child: NumericKeyboard(
                  onKeyboardTap: onKeyboardTap,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  ),
                  rightButtonFn: () {
                    if (text.isEmpty) return;
                    setState(() {
                      text = text.substring(0, text.length - 1);
                    });
                  },
                  rightButtonLongPressFn: () {
                    if (text.isEmpty) return;
                    setState(() {
                      text = '';
                    });
                  },
                  rightIcon: const Icon(
                    Icons.backspace_outlined,
                    color: Colors.blueGrey,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween),
            )
          ],
        ),
      ),
    );
  }
}
