import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nhahangScreen extends StatefulWidget {
  @override
  _nhahangScreenState createState() => _nhahangScreenState();
}

class _nhahangScreenState extends State<nhahangScreen> {
  var phong_list = [
    {"name": "NH Dân Tộc Quán", "picture": "lib/images/82.gif"},
    {"name": "NH GOLDEN LOTUS", "picture": "lib/images/73.jpg"},
    {"name": "NH Số 9", "picture": "lib/images/74.jpg",},
    {"name": "NH Tràng An", "picture": "lib/images/75.jpg"},
    {"name": "NH Ẩm Thực Việt 2", "picture": "lib/images/76.jpg"},
    {"name": "NH Biển Rừng", "picture": "lib/images/77.jpg"},
    {"name": "NH Thái Thịnh", "picture": "lib/images/78.jpg"},
    {"name": "NH Diamond", "picture": "lib/images/79.jpg"},
    {"name": "NH Royal", "picture": "lib/images/80.jpg"},
    {"name": "NH Thành Tín", "picture": "lib/images/83.jpg"},
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