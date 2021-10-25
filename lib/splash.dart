import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor: lightMode
          ? const Color(0xffeae2b7).withOpacity(1.0)
          : const Color(0x00042a49).withOpacity(1.0),
      body: Container(
        color: Colors.green.shade300,
        // child: Center(
        //   child: Image.asset('images/sms2.png'),
        // ),
      ),
    );
  }
}
