import 'package:flutter/material.dart';
import 'package:watermanicapp/widgets/AppBarWidget.dart';


class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Home"),
    );
  }
}