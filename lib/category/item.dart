import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:luongngoc/list/amthuc.dart';
import 'package:luongngoc/list/dulich.dart';
import 'package:luongngoc/list/khachsan.dart';
import 'package:luongngoc/list/vahoa.dart';
import 'package:luongngoc/list/vitri.dart';
import 'package:luongngoc/main.dart';
class itemlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.pink[200],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(           
            caption: 'Trang chủ',
          ),
          Category2(
            caption2: 'Du lịch',
          ),
          Category3(
            caption3: 'Đặc sản',
          ),
          Category4(
            caption4: 'Văn hóa',
          ),
          Category6(
            caption6: 'Kinh tế',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String caption;
  Category({this.caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => MyApp()));
        },
        child: Container(
          width: 100,
          child: ListTile(
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                caption, 
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ), ),
            ),
        )
      ),
      )
      
    );
  }
}

class Category2 extends StatelessWidget {
  final String caption2;
  Category2({this.caption2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => CarouselDemo()));
        },
        child: Container(
          width: 80,
          child: ListTile(
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                caption2, 
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ), ),
            ),
        )
      ),
      )
      
    );
  }
}

class Category3 extends StatelessWidget {
  final String caption3;
  Category3({this.caption3});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => amthucScreen()));
        },
        child: Container(
          width: 90,
          child: ListTile(
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                caption3, 
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ), ),
            ),
        )
      ),
      )
      
    );
  }
}
class Category4 extends StatelessWidget {
  final String caption4;
  Category4({this.caption4});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => vahoa()));
        },
        child: Container(
          width: 90,
          child: ListTile(
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                caption4, 
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ), ),
            ),
        )
      ),
      )
      
    );
  }
}
class Category6 extends StatelessWidget {
  final String caption6;
  Category6({this.caption6});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => vitriScreen()));
        },
        child: Container(
          width: 80,
          child: ListTile(
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(
                caption6, 
                style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ), ),
            ),
        )
      ),
      )
      
    );
  }
}
class itemlist1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category1(
            caption1: 'Giới thiệu chung',
          ),
        ],
      ),
    );
  }
}

class Category1 extends StatelessWidget {
  final String caption1;
  Category1({this.caption1});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 200,
          child: ListTile(
            subtitle: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                caption1, 
                style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ), ),
            ),
        )
      ),
      )
    );
  }
}