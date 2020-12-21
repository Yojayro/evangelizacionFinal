import 'package:flutter/material.dart';
import 'package:flutter_firebase_flutter_2/bienve.dart';
import 'package:flutter_firebase_flutter_2/configuration.dart';


class DetallesSaba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Escuela Sabatica"),
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
                tag: 2,
                child: Image.asset('images/sabatica.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              child: Center(child: Text('La Biblia es la voz de Dios hablándonos tan ciertamente como si pudiéramos oírlo con nuestros oídos. La palabra del Dios viviente no está sólo escrita, sino que es hablada. ¿Recibimos la Biblia como el oráculo de Dios? Si nos diésemos cuenta de la importancia de esta Palabra,',
                style: TextStyle(color: Colors.black,fontSize: 20),
              )),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Bienvenida(),
              ));
            },

            child: Container(

              child: Row(
                children: [



                  Expanded(

                    child: Container(

                      height: 60,
                      decoration: BoxDecoration(color: primaryGreen,),
                      child: Center(child: Text('Leer la Sabatica',style: TextStyle(color: Colors.white,fontSize: 24),)),
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