// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Class Model
class Public_utilityItem {
  String title;
  String phone;
  String image;

  Public_utilityItem({
    required this.title,
    required this.phone,
    required this.image,
  });
}

class PubUi extends StatefulWidget {
  const PubUi({super.key});

  @override
  State<PubUi> createState() => _PubUiState();
}

class _PubUiState extends State<PubUi> {

  //โทรออกได้
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber.trim(),
    );
    await launchUrl(launchUri);
  }

List<Public_utilityItem> public_utilityList = [
    Public_utilityItem(
      title: 'การไฟฟ้านครหลวง',
      phone: '1130',
      image: 'assets/images/pub_1.png',
    ),
    Public_utilityItem(
      title: 'การไฟฟ้าส่วนภูมิภาค',
      phone: '1129',
      image: 'assets/images/pub_2.png',
    ),
    Public_utilityItem(
      title: 'การไฟฟ้าฝ่ายผลิต',
      phone: '1416',
      image: 'assets/images/pub_3.png',
    ),
    Public_utilityItem(
      title: 'การประปานครหลวง',
      phone: '1125',
      image: 'assets/images/pub_4.png',
    ),
    Public_utilityItem(
      title: 'การประปาส่วนภูมิภาค',
      phone: '1662',
      image: 'assets/images/pub_5.png',
    ),
    Public_utilityItem(
      title: 'True',
      phone: '1242',
      image: 'assets/images/pub_6.png',
    ),
    Public_utilityItem(
      title: 'dtac',
      phone: '1678',
      image: 'assets/images/pub_7.png',
    ),
    Public_utilityItem(
      title: 'AIS',
      phone: '1175',
      image: 'assets/images/pub_8.png',
    ),
    Public_utilityItem(
      title: 'TOT',
      phone: '1100',
      image: 'assets/images/pub_9.png',
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
              'สายด่วน\nธนาคาร',
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
                  'assets/images/pub_0.png',
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
            itemCount: public_utilityList.length,
            itemBuilder: (context, index) {
              final item = public_utilityList[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),

                //ดึงข้อมูลจากclassที่เราสร้าง
                child: ListTile(
                  onTap: () => _makePhoneCall(item.phone),
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