import 'package:flutter/material.dart';
import 'package:luongngoc/main.dart';
class dangxuatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
         Image.asset('lib/images/42.jpg',
         fit: BoxFit.fill,
         height: 600.0,
         width: double.infinity,),
         Container(
           color: Colors.blue.withOpacity(0.2),
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
               child: ListView(
                 children: <Widget>[
                   Padding(padding: const EdgeInsets.only(top: 150),
                   child: Material(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white.withOpacity(0.8),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12),
                      child: TextFormField(
                      decoration: InputDecoration(
                       hintText: 'Email : ',
                       icon: Icon(Icons.email),
                       border: OutlineInputBorder(),
                       ),
                   ),
                   )
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 30.0),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.white.withOpacity(0.8),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12.0),
                      child: TextFormField(
                      decoration: InputDecoration(
                       hintText: 'Password : ',
                       icon: Icon(Icons.lock_outline),
                       border: OutlineInputBorder(),
                       ),
                   ),
                   )
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 50.0),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.blue,
                     elevation: 0.0,
                   child: MaterialButton(
                     onPressed: (){
                       showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Bạn đã đăng nhập thành công'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => MyApp()));
                                },
                                child: new Text('Đóng'),
                              ),
                            ],
                          );
                        });
                     },
                     minWidth: MediaQuery.of(context).size.width,
                     child: Text('Login',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),),

                   ),
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 10.0),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.blue[100],
                     elevation: 0.0,
                   child: MaterialButton(
                     onPressed: (){
                       Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => dangkyScreen()));
                     },
                     minWidth: MediaQuery.of(context).size.width,
                     child: Text('Register',
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
      bottomNavigationBar: Container(
        child: Padding(padding: const EdgeInsets.all(20.0),
        child: FlatButton(
          color: Colors.red.shade900,
          onPressed: () {}, 
          child: Text('Sing in / Sing up with google', 
              style: TextStyle(
                color: Colors.white
              ),),
              ),
              )
      ),
    );
  }
}

class dangkyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
         Image.asset('lib/images/42.jpg',
         fit: BoxFit.fill,
         height: double.infinity,
         width: double.infinity,),
         Container(
           color: Colors.blue.withOpacity(0.2),
           width: double.infinity,
           height: double.infinity,
         ),
         Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 20),
           child: Image.asset('lib/images/45.jpg',
           fit: BoxFit.contain,
         height:150,
         width: 200,
         
         ),),
         Container(
           alignment: Alignment.center,
           child: Center(
             child: Form(
               child: ListView(
                 children: <Widget>[
                   Padding(padding: const EdgeInsets.only(top: 200),
                   child: Material(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white.withOpacity(0.8),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12),
                      child: TextFormField(
                      decoration: InputDecoration(
                       hintText: 'Fullname : ',
                       icon: Icon(Icons.person),
                       border: OutlineInputBorder(),
                       ),
                   ),
                   )
                   )
                   ),
                    Padding(padding: const EdgeInsets.only(top: 5),
                   child: Material(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white.withOpacity(0.8),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12),
                      child: TextFormField(
                      decoration: InputDecoration(
                       hintText: 'Email : ',
                       icon: Icon(Icons.email),
                       border: OutlineInputBorder(),
                       ),
                   ),
                   )
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 5),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.white.withOpacity(0.8),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12.0),
                      child: TextFormField(
                      decoration: InputDecoration(
                       hintText: 'Password : ',
                       icon: Icon(Icons.lock_outline),
                       border: OutlineInputBorder(),
                       ),
                   ),
                   )
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 5),
                   child: Material(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.white.withOpacity(0.8),
                     elevation: 0.0,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12.0),
                      child: TextFormField(
                      decoration: InputDecoration(
                       hintText: 'Confirm password : ',
                       icon: Icon(Icons.lock_outline),
                       border: OutlineInputBorder(),
                       ),
                   ),
                   )
                   )
                   ),
                   
                   Padding(padding: const EdgeInsets.only(top: 45.0),
                   child: Material(
                     borderRadius: BorderRadius.circular(100.0),
                     color: Colors.blue,
                     elevation: 0.0,
                   child: MaterialButton(
                     onPressed: (){
                       showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Bạn đã đăng ký thành công'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                   Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => dangxuatScreen()));
                                },
                                child: new Text('Đóng'),
                              ),
                            ],
                          );
                        });
                  
                     },
                     minWidth: MediaQuery.of(context).size.width,
                     child: Text('Register',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),),

                   ),
                   )
                   ),
                   Padding(padding: const EdgeInsets.only(top: 15),
                   child: Material(
                     borderRadius: BorderRadius.circular(100.0),
                     color: Colors.blue[100],
                     elevation: 0.0,
                   child: MaterialButton(
                     onPressed: (){ 
                       Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => dangxuatScreen()));                        
                     },
                     minWidth: MediaQuery.of(context).size.width,
                     child: Text('Login',
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