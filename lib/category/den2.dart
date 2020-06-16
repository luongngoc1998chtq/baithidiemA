import 'package:flutter/material.dart';

class den2 extends StatefulWidget {
  @override
  _den2State createState() => _den2State();
}

class _den2State extends State<den2> {
  var den2_list = [
    {
      'name': ' KDL Tân Trào',
      'pricture': 'lib/images/38.jpg',
    },
    {
      'name': 'Động Tiên',
      'pricture': 'lib/images/39.jpg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: den2_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int indext) {
        return den(
          den_name: den2_list[indext] ['name'],
          den_pricture: den2_list[indext] ['pricture'],
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
                color: Colors.black38,
                child: new Row(
                  children: <Widget>[
                    Expanded(child: Text(
                      den_name, 
                      style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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