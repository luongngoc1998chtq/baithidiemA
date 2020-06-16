import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Setting extends StatefulWidget {
  @override
   SettingState createState() =>  SettingState();
}

class  SettingState extends State <Setting> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
   bool isSwitched3 = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.photo),
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left:70),
                    child: Text("Đổi ảnh đại diện",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.control_point),
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left:70),
                    child: Text("Đổi tên",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.email),
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left:70),
                    child: Text("Đổi Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(Icons.public),
                  ),
                  Container(
                    height: 30,
                    child: Text("Hiển thị/ ẩn thông tin cá nhân",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                  Container(
                    child: Switch(value: isSwitched , 
                    onChanged: (value)
                    {
                      setState(() {
                        isSwitched  = value;
                        print(isSwitched );
                      });
 
                    },
                    activeTrackColor: Colors.lightBlue,
                    activeColor: Colors.blue,
                    )
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.language),
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left:70),
                    child: Text("Ngôn ngữ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.settings_applications),
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left:70),
                    child: Text("Cài đặt Theme",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(Icons.lock_open),
                  ),
                  Container(
                    child: Text("Tự động đăng nhập",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                  Container(
                    child: Switch(value: isSwitched1 , 
                    onChanged: (value)
                    {
                      setState(() {
                        isSwitched1  = value;
                        print(isSwitched1 );
                      });
 
                    },
                    activeTrackColor: Colors.lightBlue,
                    activeColor: Colors.blue,
                    )
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(Icons.do_not_disturb_alt),
                  ),
                  Container(
                    child: Text("Chặn quảng cáo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                  Container(
                    child: Switch(value: isSwitched2 , 
                    onChanged: (value)
                    {
                      setState(() {
                        isSwitched2  = value;
                        print(isSwitched2 );
                      });
 
                    },
                    activeTrackColor: Colors.lightBlue,
                    activeColor: Colors.blue,
                    )
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(Icons.create),
                  ),
                  Container(
                    child: Text("Tự động lưu lịch sử hoạt động",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                  ),
                  Container(
                    child: Switch(value: isSwitched3 , 
                    onChanged: (value)
                    {
                      setState(() {
                        isSwitched3  = value;
                        print(isSwitched3 );
                      });
 
                    },
                    activeTrackColor: Colors.lightBlue,
                    activeColor: Colors.blue,
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}