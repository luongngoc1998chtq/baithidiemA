import 'package:flutter/material.dart';

class HotlineScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liên hệ"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[ Text('          Liên hệ với chúng tôi \n  khi bạn có bất kì yêu cầu giúp \n          đỡ hoặc gặp vấn đề \n         khi sử dụng app nhé!',
          softWrap: true,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),),
            Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.phone),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left:10),
                    child: Text('Hotline văn phòng chủ quản: 0248487573',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.phone),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left:10),
                    child: Text('Hotline văn phòng kỹ thuật: 0244487533',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.phone),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left:10),
                    child: Text('Hotline văn phòng du lịch: 0348487573',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.phone),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left:10),
                    child: Text('Hotline văn phòng văn hóa: 0248887573',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.phone),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left:10),
                    child: Text('Hotline văn phòng giao thông: 0248487773',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.phone),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left:10),
                    child: Text('Hotline văn phòng trợ giúp: 0248487533',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ),
                ],
              ),
            ),
          ]
        ), 
    );
  }
}
