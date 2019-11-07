import 'package:crud_flutter_firebase/bloc/home_screen_bloc.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  final bloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CRUD - Flutter & Firebase"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:
                  Container(
                      margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Digite alguma coisa",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            )
                        ),
                      )
                  )
              ),
              Container(
                margin: EdgeInsets.only(bottom:30.0),
                child: RaisedButton(child: Text("Inserir"), onPressed: (){}),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
        Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: MediaQuery.of(context).size.height-300,
            decoration:
            BoxDecoration(
                color: Colors.blue
            ),
          child: StreamBuilder(
            stream: bloc.output
          )
        )
    );
  }
}