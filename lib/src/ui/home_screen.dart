import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_flutter_2/src/bloc/authentication_bloc/bloc.dart';
import 'package:flutter_firebase_flutter_2/matu.dart';
import 'package:flutter_firebase_flutter_2/saba.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  HomeScreen({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Home"),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
            },
          )
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('asd'),
              accountEmail: new Text('Yojayro'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('Escuela Sabatica'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Sabado())
                );
              },
            ),

            new Divider(
              color: Colors.blue,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('Devocion matutina'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new MyApp())
                );
              },
            ),
            new Divider(
              color: Colors.blue,
              height: 5.0,
            ),
            new ListTile(
              title: new Text('Home'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new HomeScreen())
                );
              },
            )

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Image.asset('assets/igle.png'),),
          
        ],
      ),
    );
  }
}