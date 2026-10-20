import 'package:flutter/material.dart';

//Class Model
class BankItem {
  String title;
  String phone;
  String image;

  BankItem({
    required this.title,
    required this.phone,
    required this.image,
  });
}

class BankUi extends StatefulWidget {
  const BankUi({super.key});

  @override
  State<BankUi> createState() => _BankUiState();
}

class _BankUiState extends State<BankUi> {
  List<BankItem> bankList = [
    BankItem(
      title: 'ธนาคารกรุงเทพ',
      phone: '1333',
      image: 'assets/images/bank_1.png',
    ),
    BankItem(
      title: 'ธนาคารออมสิน',
      phone: '1115',
      image: 'assets/images/bank_2.png',
    ),
    BankItem(
      title: 'ธนาคารกสิกรไทย',
      phone: '02 888 8888',
      image: 'assets/images/bank_3.png',
    ),
    BankItem(
      title: 'ธนาคารกรุงไทย',
      phone: '02 111 1111',
      image: 'assets/images/bank_4.png',
    ),
    BankItem(
      title: 'ธนาคารกรุงศรีอยุธยา',
      phone: '1572',
      image: 'assets/images/bank_5.png',
    ),
    BankItem(
      title: 'ธนาคารทีเอ็มบีธนชาต',
      phone: '1428',
      image: 'assets/images/bank_6.png',
    ),
    BankItem(
      title: 'ธนาคารซิตี้แบงก์',
      phone: '1588',
      image: 'assets/images/bank_7.png',
    ),
    BankItem(
      title: 'ธนาคารแลนด์ แอนด์ เฮ้าส์',
      phone: '1327',
      image: 'assets/images/bank_8.png',
    ),
    BankItem(
      title: 'ธนาคารอาคารสงเคราะห์',
      phone: '02 645 9000',
      image: 'assets/images/bank_9.png',
    ),
    BankItem(
      title: 'ธนาคารไทยพาณิชย์',
      phone: '02 777 7777',
      image: 'assets/images/bank_10.png',
    ),
    BankItem(
      title: 'ธนาคารเกียรตินาคินภัทร',
      phone: '02 165 5555',
      image: 'assets/images/bank_11.png',
    ),
    BankItem(
      title: 'ธนาคารไทยเครดิต',
      phone: '02 697 5454',
      image: 'assets/images/bank_12.png',
    ),
    BankItem(
      title: 'ธนาคารยูโอบี',
      phone: '02 285 1555',
      image: 'assets/images/bank_13.png',
    ),
    BankItem(
      title: 'ธนาคารทิสโก้',
      phone: '02 633 6000',
      image: 'assets/images/bank_14.png',
    ),
    BankItem(
      title: 'ธนาคารอิสลามแห่งประเทศไทย',
      phone: '02 204 2766',
      image: 'assets/images/bank_15.png',
    ),
    BankItem(
      title: 'ธนาคารซีไอเอ็มบี ไทย',
      phone: '02 626 7777',
      image: 'assets/images/bank_16.png',
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
                  'assets/images/bank_0.png',
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
            itemCount: bankList.length,
            itemBuilder: (context, index) {
              final item = bankList[index];
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
