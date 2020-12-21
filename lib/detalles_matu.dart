import 'package:flutter/material.dart';
import 'package:flutter_firebase_flutter_2/bienve.dart';
import 'package:flutter_firebase_flutter_2/configuration.dart';
import 'package:flutter_firebase_flutter_2/matu.dart';


class DetallesMatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Second Route"),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,


                    ),
                  )
                ],
              )),
          Container(
            margin:EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Align(

              alignment: Alignment.topCenter,
              child: Hero(
                tag: 1,
                child: Image.asset('images/matus.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Center(child: Text('La Devocion Matutina es el alimento espiritual que necesitas, para crecer en Cristo Jesús. Estudia y medita en los matinales para adultos, jóvenes mujeres y famílias. ... Dios siempre actúa en la vida de las persona de una u otra manera, descubre como con la devoción matutina adventista.',
                style: TextStyle(color: Colors.black,fontSize: 20),)),
              height: 350,
              margin: EdgeInsets.symmetric(horizontal: 00),
              decoration: BoxDecoration(

                color: Colors.white12,
                boxShadow: shadowList,
              ),

            ),
          ),


        GestureDetector(

        onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp(),
        ));
          },

            child: Container(

              child: Row(
                children: [



                  Expanded(

                    child: Container(

                      height: 60,
                      decoration: BoxDecoration(color: primaryGreen,),
                      child: Center(child: Text('Leer la Matutina',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ),
                  )
                ],
              )
              ,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40), )
              ),
            ),

        )],
      ),
    );
  }
}
