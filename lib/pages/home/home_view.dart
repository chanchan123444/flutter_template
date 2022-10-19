import 'package:flutter/material.dart';
import 'package:flutter_getx_template/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('首页'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Center(child: Text(controller.count.toString()))),
            TextButton(onPressed: () => controller.increment(), child: Text('count++')),
            GetBuilder<HomeController>(builder: (_) {
              return Text(controller.userName);
            }),
            TextButton(onPressed: () => controller.changeUserName(), child: Text('changeName')),
          ],
        ),
      ),
    );
  }
}
