import 'package:darts/models/points.dart';
import 'package:darts/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SlideThrough extends StatefulWidget {
  late int point;
  SlideThrough({super.key, required this.point} );

  @override
  State<SlideThrough> createState() => _SlideThroughState();
}

class _SlideThroughState extends State<SlideThrough> {
  List<int> numbers = [101, 201, 301, 401, 501, 601, 701, 801, 901, 1001];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212328),
      appBar: AppBar(
        backgroundColor: Color(0xff212328),
      ),
      body: Column(
        children: <Widget>[
          for (var item in numbers)
            TextButton(
              onPressed: () {
                final index = numbers.indexOf(item);

                setState(() {
                  widget.point = numbers[index];
                  print(widget.point);
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: numbers[index],
                    ),
                  ),
                );
              },
              child: Container(
                width: 420,
                height: 57,
                child: Center(
                  child: Text(
                    item.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
