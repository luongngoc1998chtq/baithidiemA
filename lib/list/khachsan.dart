import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class khachsanScreen extends StatefulWidget {
  @override
  _khachsanScreenState createState() => _khachsanScreenState();
}

class _khachsanScreenState extends State<khachsanScreen> {
  var phong_list = [
    {"name": "Royal", "picture": "lib/images/50.jpg", "price": "350.000đ / đêm / phòng đôi"},
    {"name": "Mường Thanh", "picture": "lib/images/51.jpg", "price": "750.000đ / đêm / phòng đơn"},
    {"name": "Lavender", "picture": "lib/images/52.jpg", "price": "350.000đ / đêm / phòng đơn"},
    {"name": "Mường Thanh", "picture": "lib/images/53.jpg", "price": "250.000đ / đêm / phòng đôi"},
    {"name": "Rosavila", "picture": "lib/images/54.jpg", "price": "550.000đ / đêm / phòng đôi"},
    {"name": "Vu Linh", "picture": "lib/images/62.jpg", "price": "350.000đ / đêm / phòng đôi"},
    {"name": "Mường Thanh", "picture": "lib/images/63.jpg", "price": "250.000đ / đêm / phòng 3"},
    {"name": "Nam Phong", "picture": "lib/images/64.jpg", "price": "950.000đ / đêm / phòng đôi"},
    {"name": "Royal", "picture": "lib/images/65.jpg", "price": "550.000đ / đêm / phòng đơn"},
    {"name": "Mường Thanh", "picture": "lib/images/66.jpg", "price": "650.000đ / đêm / phòng đơn"},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: phong_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Single_ph(
            ph_name: phong_list[index]['name'],
            ph_picture: phong_list[index]['picture'],
            ph_price: phong_list[index]['price'],
          );
        });
  }
}

class Single_ph extends StatelessWidget {
  final ph_name;
  final ph_picture;
  final ph_price;
  Single_ph({
    this.ph_name,
    this.ph_picture,
    this.ph_price,
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\ $ph_price ",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              child: Image.asset(
                ph_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
