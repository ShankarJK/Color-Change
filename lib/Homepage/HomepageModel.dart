import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'HomepageModel.g.dart';

class HomepageModel = _HomepageModelBase with _$HomepageModel;

abstract class _HomepageModelBase with Store {
  // Declare a variable named collectionOfColors with type list and assign the list colors
  List<Color> collectionOfColors = [
    Colors.black,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.grey,
    Colors.orange,
    Colors.red,
    Colors.indigo,
    Colors.pinkAccent,
    Colors.purple,
    Colors.lightBlueAccent,
    Colors.teal,
  ];

  // Declare the variable scaffoldColor and assign the color
  @observable
  Color scaffoldColor = Colors.white;

// Declare the variable buttonColor and assign the color
  @observable
  Color buttonColor = Colors.lightBlue;

  /* Declare a method named colorchanger with required parameter as scaffoldColor,buttonColor and assign the paramter scaffoldColor value to the this.scaffoldColor*/

  void colorchanger(
      {required Color scaffoldColor, required Color buttonColor}) {
    this.scaffoldColor = scaffoldColor;
    this.buttonColor = buttonColor;
  }
}
