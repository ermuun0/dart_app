import 'package:flutter/material.dart';
import 'package:wfa/pop_up/add_player.dart';
import 'package:wfa/point_section.dart';
import 'package:wfa/pop_up/first_to.dart';
import 'package:wfa/slide_through.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff212328),
      body: SafeArea(
          child: Column(
        children: [
          const Center(
            child: Text('Darts score',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              AddPlayer(),
              SizedBox(
                width: 70,
              ),
              AddPlayer()
            ],
          ),
          Image.asset('assets/vs (1).png'),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              AddPlayer(),
              SizedBox(
                width: 70,
              ),
              AddPlayer()
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('Points', style: TextStyle(color: Colors.white, fontSize: 40)),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            child: Container(
              width: 150,
              height: 40,
              child: Text(
                '501',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff514f57),
            ),
          ),
          SizedBox(
            height: 160,
          ),
          Text('First To', style: TextStyle(color: Colors.white, fontSize: 25)),
          SizedBox(
            height: 30,
          ),
          FirstTo(),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Points()));
              },
              child: Container(
                  width: 250,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Start',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3aa121),
              )),
        ],
      )),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SlideThrough(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
