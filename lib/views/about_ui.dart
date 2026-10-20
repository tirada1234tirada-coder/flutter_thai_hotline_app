import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
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
            SizedBox(width: 50.0),
          ],
        ),
        centerTitle: true,
      ),
      
      //เนื้อหา
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0,),
                //ผู้จัดทำ
                Text(
                  'ผู้จัดทำ',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 24.0),

                //โลโก้มหาวิทยาลัย
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    'assets/images/saulogo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  'มหาวิทยาลัยเอเชียอาคเนย์',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 60.0),

                //รูปโปรไฟล์
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[200],
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/me.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),

                //ข้อมูลนักศึกษา
                Text(
                  '6819410047',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  'ถิรดา เทพวงษา',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  's6819410047@sau.ac.th',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  'วิศวกรรมคอมพิวเตอร์',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15.0),
                Text(
                  'วิศวกรรมศาสตร์',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}