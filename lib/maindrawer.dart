import 'package:flutter/material.dart';
import 'package:flutter_firebase_flutter_2/NewsDetails.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_flutter_2/src/bloc/authentication_bloc/bloc.dart';

import 'package:flutter_firebase_flutter_2/src/ui/home_screen.dart';
import 'package:flutter_firebase_flutter_2/GetRssSaba.dart';
import 'package:flutter_firebase_flutter_2/matu.dart';
import 'package:flutter_firebase_flutter_2/saba.dart';
import 'package:flutter_firebase_flutter_2/bienve.dart';
import 'package:flutter_firebase_flutter_2/src/repository/user_repository.dart';
import 'package:flutter_firebase_flutter_2/juegos.dart';



class MainDrawer extends StatelessWidget {
  final String name;

  MainDrawer({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Center(child: Text('Bienvenido $name!'),),
              Text(
                "Yojayro Ito",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Center(child: Text('yojayro.ito@upeu.edu.pe!'),)
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),

      ListTile(
        onTap: (){
          Navigator.of(context).pop();
          Navigator.push(context, new MaterialPageRoute(
              builder: (BuildContext context) => new Bienvenida())
          );
        },
        leading: Icon(
          Icons.assessment,
          color: Colors.black,
        ),
        title: Text("Menu Principal"),
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: (){
          Navigator.of(context).pop();
          Navigator.push(context, new MaterialPageRoute(
              builder: (BuildContext context) => new MyApp())
          );
        },
        leading: Icon(
          Icons.book,
          color: Colors.black,
        ),
        title: Text("Devocion Matutina"),
      ),

      ListTile(
        onTap: (){
          Navigator.of(context).pop();
          Navigator.push(context, new MaterialPageRoute(
              builder: (BuildContext context) => new Sabado())
          );
        },
        leading: Icon(
          Icons.book_outlined,
          color: Colors.black,
        ),
        title: Text("Escuela Sabatica"),
      ),


      ListTile(
        onTap: (){
          Navigator.of(context).pop();
          Navigator.push(context, new MaterialPageRoute(
              builder: (BuildContext context) => new Juegos())
          );
        },
        leading: Icon(
          Icons.assessment,
          color: Colors.black,
        ),
        title: Text("Juegos Jovenes"),
      ),

      ListTile(
        onTap: () {
          BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
        },
        leading: Icon(
          Icons.exit_to_app_sharp,
          color: Colors.red,
        ),
        title: Text("Salir"),
      ),
    ]);
  }
}