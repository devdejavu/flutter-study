import 'package:flutter/material.dart';
import 'package:flutter_study/src/home.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("뒤로 이동"),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
            ElevatedButton(
              child: const Text("홈으로 이동"),
              onPressed: () {

                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => const Home()),
                //         (route) => false);

                //  Get.to(const Home());

                Get.offAll(const Home()); // home 으로 이동 함과 동시에 쌓인 history 제거
              },
            )
          ],
        ),
      ),
    );
  }
}
