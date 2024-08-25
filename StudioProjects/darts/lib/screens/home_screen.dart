import 'package:darts/models/points.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/username_model.dart';
import 'point_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = Get.find<Controller>();
  var pointcontroller = Get.find<PointsModel>();
  var count = 0.obs;


  void openDialog() {


    Get.dialog(AlertDialog(
      title: Text(''),
      actions: [

        Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    pointcontroller.point = 101;
                    Get.back();
                    print(pointcontroller.point);
                  },
                  child: Text('101')),
              TextButton(
                  onPressed: () {
                    pointcontroller.point = 301;
                    Get.back();
                    print(pointcontroller.point);
                  },
                  child: Text('301')),
              TextButton(
                  onPressed: () {
                    pointcontroller.point = 501;

                    print(pointcontroller.point);
                    Get.back();
                  },
                  child: Text('501')),
            ],
          ),
        )
      ],
    ));

  }

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
          ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                  title: '',
                  content: Column(
                    children: [
                      TextField(
                          controller: controller.textController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Color(0xff212328),
                            filled: true,
                          )),
                      ElevatedButton(
                        onPressed: () {
                          controller.addUser(controller.textController.text);
                        },
                        child: Center(
                          child: Text('Done',
                          style: TextStyle(color: Colors.white),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff514f57),
                        ),
                      )
                    ],
                  ));
            },
            child: Container(
              width: 120,
              height: 40,
              child: Text(
                'Add ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff514f57),
            ),
          ),
          Expanded(
              child: Obx(
            () => ListView.builder(
              itemCount: controller.itemCount.value,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    controller.names.value[index].name!,
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: GestureDetector(
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: () {
                      controller.removeUser(index);
                    },
                  ),
                );
              },
            ),
          )),
          Text('Points', style: TextStyle(color: Colors.white, fontSize: 40)),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {    setState(() {  openDialog();});

            },
            child: Container(
              width: 150,
              height: 40,
              child: Text(
                pointcontroller.point.toString(),
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
            height: 70,
          ),
          Text('First To', style: TextStyle(color: Colors.white, fontSize: 25)),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 160,
              ),
              IconButton(
                onPressed: () {
                  count++;
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {
                    count--;
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ))
            ],
          ),
          Obx(
            () => Text(
              (count.string),
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          // First(
          //   onSubmitted: (int) {},
          // ),
          SizedBox(
            height: 40,
          ),
          StartButton(),
          SizedBox(
            height: 50,
          )
        ],
      )),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PointSection()));
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
