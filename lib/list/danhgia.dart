import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class danhgiaScreen extends StatelessWidget {
  @override            
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,            
      title: 'Thành phố Tuyên Quang',            
      home: Scaffold(            
        appBar: AppBar(            
        title: Text('Đánh giá'),
        backgroundColor: Colors.blueAccent,  
                  
      ),            
      body: ListView(       
        padding: const EdgeInsets.all(60),    
        children:[
          Text(' Hãy đánh giá sao hoặc thả tim cho chúng tôi nhé!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightBlue[700],
            fontWeight: FontWeight.bold,
          ),),
          Counter1(),
          Counter(),
        ],
      ),
       ),
    );
  }
}
class Counter1 extends StatefulWidget{
  @override
  _Counter1State createState() => _Counter1State();
}
class _Counter1State extends State<Counter1> {
  int _counter =0;
  void _increment(){
    setState(() {
      _counter ++;
    });
  }
   @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top:150)),
        IconButton(
          icon: Icon(
            Icons.star,
            size: 50,
            color: Colors.yellowAccent,
          ),
          onPressed: _increment,
        ),
        Text('    $_counter',
        style: TextStyle(fontSize: 50,
            color: Colors.lightBlue[700],
            fontWeight: FontWeight.bold,
          ),),
      ],
    );
  }
}

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int _counter =0;
  void _increment(){
    setState(() {
      _counter ++;
    });
  }
   @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top:150)),
        IconButton(
          icon: Icon(
            Icons.favorite,
             size: 50,
            color: Colors.red[500],
          ),
          onPressed: _increment,
        ),
        Text('    $_counter',
        style: TextStyle(fontSize: 50,
            color: Colors.lightBlue[700],
            fontWeight: FontWeight.bold,
          ),),
      ],
    );
  }
}