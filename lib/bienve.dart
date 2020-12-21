import 'package:flutter/material.dart';
import 'package:flutter_firebase_flutter_2/NewsDetails.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_flutter_2/detalles_saba.dart';
import 'package:flutter_firebase_flutter_2/matu.dart';
import 'package:flutter_firebase_flutter_2/src/bloc/authentication_bloc/bloc.dart';
import 'package:flutter_firebase_flutter_2/src/ui/home_screen.dart';
import 'package:flutter_firebase_flutter_2/saba.dart';
import 'package:flutter_firebase_flutter_2/maindrawer.dart';
import 'package:flutter_firebase_flutter_2/configuration.dart';
import 'package:flutter_firebase_flutter_2/detalles_matu.dart';
import 'package:flutter_firebase_flutter_2/detalles_saba.dart';



import 'GetRss.dart';

void main() => runApp(Bienvenida());

class Bienvenida extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bienvenida'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {

    setState(() {
      GetRss.getRss();
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Devocion matutina",style: TextStyle(

        ),),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [



            SizedBox(
              height: 5,
            ),



            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetallesMatu()));

              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),

                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(

                                tag:1,child: Image.asset('images/matus.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      child: Center(child: Text('DEVOCION MATUTINA.',
                        style: TextStyle(color: Colors.black,fontSize: 24),)),
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),

                    ))

                  ],
                ),

              ),
            ),




            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetallesSaba()));

              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),

                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(

                                tag:2,child: Image.asset('images/sabatica.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      child: Center(child: Text('ESCUELA SABATICA.',
                        style: TextStyle(color: Colors.black,fontSize: 24),)),
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),

                    ))

                  ],
                ),

              ),
            ),

          ],
        ),

      ),
    );
  }
}
