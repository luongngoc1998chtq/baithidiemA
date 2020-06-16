import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class emailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Text("Email phản hồi"),),
      body: Stack(
        children: <Widget>[    
         Image.asset('lib/images/61.png',
         fit: BoxFit.contain,
         height: 800.0,
         width: 800,),
         Container(
           color: Colors.red.withOpacity(0.2),
           width: double.infinity,
           height: double.infinity,
         ),
         Container(
            alignment: Alignment.topCenter,
           child: Image.asset('lib/images/45.jpg',
           fit: BoxFit.contain,
         height:150,
         width: 200,
         ),),
         Container(
           alignment: Alignment.center,
           child: Center(
             child: Form(
               child: Column(
                 children: <Widget>[
                   Padding(padding: const EdgeInsets.only(top: 170),
                   child: Material(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white.withOpacity(1),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.all(50),
                      child: TextFormField(
                      
                   ),
                   )
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 20.0),
                   child: Material(
                     borderRadius: BorderRadius.circular(100.0),
                     color: Colors.blue,
                     elevation: 0.0,
                   child: MaterialButton(
                     child: Text('Gửi',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),),
                   ),
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 20.0),
                   child: Material(
                     borderRadius: BorderRadius.circular(50.0),
                     color: Colors.blue[100],
                     elevation: 0.0,
                   child: MaterialButton(
                     child: Text('Reset',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.red,
                       fontWeight: FontWeight.bold
                     ),),

                   ),
                   )
                   ),
                 ],
                 ),
                 )
           ),
         ),
        ],
      ),
    );
  }
}
