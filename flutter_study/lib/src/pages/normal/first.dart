import 'package:flutter/material.dart';
import 'package:flutter_study/src/pages/normal/second.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('First Page'),
       ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("다음페이지 이동"),
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(
                //         builder: (_) => const FirstPage()
                //     ));
                Get.to(const SecondPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
