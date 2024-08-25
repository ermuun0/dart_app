import 'package:darts/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Controller extends GetxController {
  final textController = TextEditingController();
  Rx<List<DynamicList>> names=Rx<List<DynamicList>>([]);
  late DynamicList item;
  RxString controllerText = ''.obs;
  var itemCount = 0.obs;
  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      controllerText.value = textController.text;
    });
  }
  void onClose(){
    super.onClose();
    textController.dispose();
  }
  addUser(String name){
    item = DynamicList(name: name);
    names.value.add(item);
    itemCount.value = names.value.length;
    textController.clear();
  }
  removeUser(int index){
    names.value.removeAt(index);
    itemCount.value = names.value.length;
  }
}