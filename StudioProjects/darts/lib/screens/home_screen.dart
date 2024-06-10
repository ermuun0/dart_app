import 'package:darts/pop_up/first_to.dart';
import 'package:flutter/material.dart';
import '/pop_up/add_player.dart';
import 'point_section.dart';
import '/pop_up/first.dart';
import 'slide_through.dart';
import '../models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];
  int currentPoint = 0;

  @override
  void initState() {
    super.initState();
    User user1 = User(1, 'Player 1', 0);
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
    final number = ModalRoute.of(context)!.settings.arguments == null
        ? 0
        : ModalRoute.of(context)!.settings.arguments;
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
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              AddPlayer(
                user: users[0],
                onSubmitted: (String) {},
              ),
              SizedBox(
                width: 50,
              ),
              AddPlayer(
                user: users[1],
                onSubmitted: (String) {},
              )
            ],
          ),
          new Image.asset('assets/vs.png', width: 100, height: 100,),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              AddPlayer(
                user: users[2],
                onSubmitted: (String) {},
              ),
              SizedBox(
                width: 50,
              ),
              AddPlayer(
                user: users[3],
                onSubmitted: (String) {},
              )
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
              Navigator.of(context).push(_createRoute(currentPoint));
              setState(() {});
            },
            child: Container(
              width: 150,
              height: 40,
              child: Text(
                number.toString(),
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
            height: 100,
          ),
          Text('First To', style: TextStyle(color: Colors.white, fontSize: 25)),
          SizedBox(
            height: 30,
          ),
          First(onSubmitted: (int ) {},),
          SizedBox(
            height: 40,
          ),
          StartButton(newUser: users[0])
        ],
      )),
    );
  }

  Route _createRoute(int point) {
    point = currentPoint;
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          SlideThrough(point: point),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class StartButton extends StatelessWidget {
  final User newUser;

  const StartButton({required this.newUser, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PointSection(newUser)));
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
    );
  }
}
