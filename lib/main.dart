import 'package:currency_converter/currency_converter_cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

//Types of widgets:
//1. Stateless widgets   * no change of state happens
//2. Stateful widgets    * change of state happens
//3. inherited widgets   * know for functionality

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //We can return two types of app
    //1. MaterialApp
    //2. cupertinoApp
    return const  MaterialApp(
        home:  CurrencyConverterMaterialPageStateful(),);
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        home:  CurrencyConverterCupertinoPage(),);
  }
}
