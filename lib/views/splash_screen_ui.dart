import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    //TODO: implement initState
    //หน่วงหน้าจอไว้3วิ แล้วเปิดไปหน้าhomeuiแบบย้อนกลับไปไม่ได้
    Future.delayed(
        //เวลาที่หน่วง
        Duration(
          seconds: 5,
        ),
        //ครบเเล้วทำอะไร
        () {
      //เปิดไปหน้าhomeui แบบย้อนกลับไปไม่ได้
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeUi()),
      );
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon.png',
              width: MediaQuery.of(context).size.height * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.cover,
            ),
            Container(
              height: 50,
            ),
            Text(
              'THAI HOTLINE APP',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'สายด่วน',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              height: 50,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}