import 'package:flutter/material.dart';

//Class Model
class TravelItem {
  String title;
  String phone;
  String image;

  TravelItem({
    required this.title,
    required this.phone,
    required this.image,
  });
}

class TravelUi extends StatefulWidget {
  const TravelUi({super.key});

  @override
  State<TravelUi> createState() => _TravelUiState();
}

class _TravelUiState extends State<TravelUi> {
  //Listข้อมูลไว้ข้างในState
  List<TravelItem> travelList = [
    TravelItem(
      title: 'กรมทางหลวงชนบท',
      phone: '1146',
      image: 'assets/images/travel_1.png',
    ),
    TravelItem(
      title: 'ตำรวจท่องเที่ยว',
      phone: '1155',
      image: 'assets/images/travel_2.png',
    ),
    TravelItem(
      title: 'ตำรวจทางหลวง',
      phone: '1193',
      image: 'assets/images/travel_3.png',
    ),
    TravelItem(
      title: 'ข้อมูลจราจร',
      phone: '1197',
      image: 'assets/images/travel_4.png',
    ),
    TravelItem(
      title: 'ขสมก.',
      phone: '1348',
      image: 'assets/images/travel_5.png',
    ),
    TravelItem(
      title: 'บขส.',
      phone: '1490',
      image: 'assets/images/travel_6.png',
    ),
    TravelItem(
      title: 'เส้นทางบนทางด่วน',
      phone: '1543',
      image: 'assets/images/travel_7.png',
    ),
    TravelItem(
      title: 'กรมทางด่วน',
      phone: '1586',
      image: 'assets/images/travel_8.png',
    ),
    TravelItem(
      title: 'การรถไฟแห่งประเทศไทย',
      phone: '1690',
      image: 'assets/images/travel_9.png',
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
              'สายด่วน\nการเดินทาง',
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
                  'assets/images/travel_0.png',
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
            itemCount: travelList.length,
            itemBuilder: (context, index) {
              final item = travelList[index];
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
  