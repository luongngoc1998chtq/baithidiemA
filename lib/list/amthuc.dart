import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class amthucScreen extends StatefulWidget {
  @override
  _amthucScreenState createState() => _amthucScreenState();
}

class _amthucScreenState extends State<amthucScreen> {
  var phong_list = [
    {"name": "Xôi ngũ sắc", "picture": "lib/images/10.jpg"},
    {"name": "Cam sành Hàm Yên", "picture": "lib/images/12.jpg",},
    {"name": "Bánh gai Chiêm Hóa", "picture": "lib/images/7.jpg"},
    {"name": "Bánh nhân trứng kiến", "picture": "lib/images/8.jpg"},
    {"name": "Măng khô", "picture": "lib/images/6.jpg"},
    {"name": "Cơm Lam", "picture": "lib/images/9.jpg"},
    {"name": "Gỏi cá bỗng sông Lô", "picture": "lib/images/13.jpg"},
    {"name": "Mắm cá Chiêm Hóa", "picture": "lib/images/5.jpg"},
    {"name": "Rượu ngô Na Hang", "picture": "lib/images/72.jpg"},
    {"name": "Thịt lợn đen", "picture": "lib/images/67.jpg"},
    {"name": "Thịt gác bếp", "picture": "lib/images/68.jpg"},
    {"name": "Lạp xưởng", "picture": "lib/images/69.jpg"},
    {"name": "Hồng ko hạt Xuân Vân", "picture": "lib/images/70.jpg"},
    {"name": "Chè Tuyên Quang", "picture": "lib/images/71.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: phong_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_ph(
            ph_name: phong_list[index]['name'],
            ph_picture: phong_list[index]['picture'],
           
          );
        });
  }
}

class Single_ph extends StatelessWidget {
  final ph_name;
  final ph_picture;
  
  Single_ph({
    this.ph_name,
    this.ph_picture,
   
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: ph_name,
        child: Material(
          child: InkWell(
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    ph_name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(
                ph_picture,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
