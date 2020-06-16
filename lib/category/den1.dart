import 'package:flutter/material.dart';

class den1 extends StatefulWidget {
  @override
  _den1State createState() => _den1State();
}

class _den1State extends State<den1> {
  var den1_list = [
    {
      'name': 'Thành Nhà Mạc',
      'pricture': 'lib/images/34.jpg',
    },
    {
      'name': 'Đền Hạ',
      'pricture': 'lib/images/36.jpg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: den1_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int indext) {
        return den(
          den_name: den1_list[indext] ['name'],
          den_pricture: den1_list[indext] ['pricture'],
        );
      });
  }
}

class den extends StatelessWidget {
  final den_name;
  final den_pricture;
  den(
    {
    this.den_name,
    this.den_pricture,
    }
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: den_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                alignment: Alignment.centerLeft,
                color: Colors.white38,
                child: new Row(
                  children: <Widget>[
                    Expanded(child: Text(
                      den_name, 
                      style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                    ),
                    ),
                  ),                   
                       ],
                  ),
                ),
              child: Image.asset(den_pricture,
              fit: BoxFit.fill,),
            ),
          ),),

      ),
    );
  }
}