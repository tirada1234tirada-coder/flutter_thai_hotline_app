import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/views/bank_ui.dart';
import 'package:flutter_cake_shop_project/views/emg_ui.dart';
import 'package:flutter_cake_shop_project/views/pub_ui.dart';
import 'package:flutter_cake_shop_project/views/travel_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //สร้างตัวแปรเก็บหมายเลข index ของ baritem
  int selectedIndex = 1;

  //สร้างตัวแปรประเภท list เก็บหน้าจอ BmiUi,BmrUi,AboutUi
  List subViewShow = [
    TravelUi(),
    EmgUi(),
    BankUi(),
    PubUi(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ทำ appbar
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'สายด่วน THAILAND',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        centerTitle: true,
      ),
      //ทำปุ่มข้างล่าง
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          //*****โค้ดใดที่มีผลต่อการแสดงผล ต้องเขียนอยู่ภายในคำสั่ง setState()
          setState(
            () {
              selectedIndex = value;
            },
          );
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/travel_0.png',
              width: 50,
              height: 50,
            ),
            activeIcon: Image.asset(
              'assets/images/travel_0.png',
              width: 50,
              height: 50,
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/emg_0.png',
              width: 50,
              height: 50,
            ),
            activeIcon: Image.asset(
              'assets/images/emg_0.png',
              width: 50,
              height: 50,
            ),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bank_0.png',
              width: 50,
              height: 50,
            ),
            activeIcon: Image.asset(
              'assets/images/bank_0.png',
              width: 50,
              height: 50,
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/pub_0.png',
              width: 50,
              height: 50,
            ),
            activeIcon: Image.asset(
              'assets/images/pub_0.png',
              width: 50,
              height: 50,
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      //ส่วนของ body ทั้งหมด
      body: subViewShow[selectedIndex],
    );
  }
}
