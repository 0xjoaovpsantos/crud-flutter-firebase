import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeBloc{

  final db = Firestore.instance;

  List<String> list;

  final StreamController _streamController = StreamController();
  Sink get input => _streamController.sink;
  Stream get output => _streamController.stream;



  /*
  void incrementCounter(){
    counter++;
    input.add(counter);
  }
   */

}