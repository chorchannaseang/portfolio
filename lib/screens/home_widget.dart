import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/counter_controller.dart';
import 'package:portfolio/route.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        actions: [
          IconButton(
            onPressed: () => Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark()),
            icon: const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${counterController.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed(AppRoute.profile),
              child: const Text("to Profile page"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increase();
          Get.snackbar(
            "Hi",
            "Damn!!!",
            icon: const Icon(Icons.ac_unit_sharp, color: Colors.red),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
