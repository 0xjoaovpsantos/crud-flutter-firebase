import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CRUD - Flutter & Firebase"),
        ),
        body: Column(
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
            )
          ],
        )
    );
  }
}
