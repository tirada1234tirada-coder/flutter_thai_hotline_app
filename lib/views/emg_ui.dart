// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

//Class Model
class EmergencyItem {
  String title;
  String phone;
  String image;

  EmergencyItem({
    required this.title,
    required this.phone,
    required this.image,
  });
}

class EmgUi extends StatefulWidget {
  const EmgUi({super.key});

  @override
  State<EmgUi> createState() => _EmgUiState();
}

class _EmgUiState extends State<EmgUi> {
  //Listข้อมูลไว้ข้างในState
  List<EmergencyItem> emergencyList = [
    EmergencyItem(
      title: 'เหตุด่วนเหตุร้าย',
      phone: '191',
      image: 'assets/images/emg_1.png',
    ),
    EmergencyItem(
      title: 'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
      phone: '199',
      image: 'assets/images/emg_2.png',
    ),
    EmergencyItem(
      title: 'สายด่วนรถหาย(ตำรวจแห่งชาติ)',
      phone: '1192',
      image: 'assets/images/emg_3.png',
    ),
    EmergencyItem(
      title: 'อุบัติเหตุทางนํ้า',
      phone: '1196',
      image: 'assets/images/emg_4.png',
    ),
    EmergencyItem(
      title: 'แจ้งคนหาย',
      phone: '1300',
      image: 'assets/images/emg_5.png',
    ),
    EmergencyItem(
      title: 'ศูนย์ปลอดภัยคมนาคม',
      phone: '1356',
      image: 'assets/images/emg_6.png',
    ),
    EmergencyItem(
      title: 'หน่วยแพทย์กู้ชีพ',
      phone: '1554',
      image: 'assets/images/emg_7.png',
    ),
    EmergencyItem(
      title: 'ศูนย์เอราวัณ',
      phone: '1646',
      image: 'assets/images/emg_8.png',
    ),
    EmergencyItem(
      title: 'เจ็บป่วยฉุกเฉิน',
      phone: '1669',
      image: 'assets/images/emg_9.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // หัวข้อ
          Center(
            child: Text(
              'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: Container(
              width: 140,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(4),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(4),
                child: Image.asset(
                  'assets/images/emg_0.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),

          //รายการListView.builderด้านล่าง (AI)
          ListView.builder(
            shrinkWrap: true, //**สำคัญมากเมื่อใส่ListViewซ้อนในListView
            physics:
                NeverScrollableScrollPhysics(), //ปิดการเลื่อนของตัวลูก ปล่อยให้ตัวแม่เลื่อนแทน
            itemCount: emergencyList.length,
            itemBuilder: (context, index) {
              final item = emergencyList[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                
                //ดึงข้อมูลจากclassที่เราสร้าง
                child: ListTile(
                  leading: Image.asset(
                    item.image,
                    width: 40,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    item.phone,
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),
                  trailing: Icon(Icons.phone, color: Colors.black54),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}