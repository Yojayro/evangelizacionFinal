import 'package:flutter/material.dart';
import 'package:flutter_firebase_flutter_2/NewsDetails.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_flutter_2/src/bloc/authentication_bloc/bloc.dart';
import 'package:flutter_firebase_flutter_2/src/ui/home_screen.dart';
import 'package:flutter_firebase_flutter_2/GetRssJueg.dart';
import 'package:flutter_firebase_flutter_2/matu.dart';
import 'package:flutter_firebase_flutter_2/maindrawer.dart';

import 'GetRssSaba.dart';

void main() => runApp(Juegos());

class Juegos extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Juegos Jovenes'),
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


  @override
  Widget build(BuildContext context) {
    setState(() {
      GetRssJueg.getRss();
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Juegos Jovenes"),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Center(

        child: FutureBuilder(

            future: GetRssJueg.getRss(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                // TODO: Handle this case.
                  break;
                case ConnectionState.waiting:
                  return Center(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.cloud_download),
                        Text("Cargando Información...")
                      ],
                    ),
                  );
                  break;
                case ConnectionState.active:
                // TODO: Handle this case.
                  break;
                case ConnectionState.done:
                  return Container(
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          String url;

                          return ListTile(
                            leading: Image.network(url),
                            title: Text(snapshot.data[index].titulo,
                              style: TextStyle(fontSize: 15, color: Colors.black54),),
                            subtitle: Text(snapshot.data[index].fecha,
                              style: TextStyle(fontSize: 15, color: Colors.black),),
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                    NewsDetails(
                                      title: "Matutina",
                                      url: snapshot.data[index].urlNoticia,
                                      key: null,
                                    ),
                                ),
                              );
                            },
                          );
                        },
                        separatorBuilder: (context, index) =>
                            Divider(
                              color: Colors.grey,
                            ),
                        itemCount: snapshot.data.length
                    ),
                  );
                  break;
              }
            }),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}