// import 'dart:html';
// import 'dart:ui';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';


///To create an variable that collects and stores an users value
///To create an function that can multiple the value with conversion value and produce an result and displaying in the area

class  CurrencyConverterMaterialPageStateful extends StatefulWidget{
  const   CurrencyConverterMaterialPageStateful({super.key});

  
  @override
  State<CurrencyConverterMaterialPageStateful> createState() =>
    // debugPrint("create state");
    _CurrencyStatePage();
    // return  _CurrencyStatePage();

  }


class _CurrencyStatePage extends State<CurrencyConverterMaterialPageStateful>{
  double result = 0;
   final TextEditingController textEdited = TextEditingController();
   @override
    Widget build(BuildContext context) {
      debugPrint('Main Widget');
         
          

    const border = OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 20, 19, 19),
          width: 2.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50)));
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 201, 218, 203),
        appBar: AppBar(
          backgroundColor:const  Color.fromARGB(173, 77, 110, 81),
          elevation: 2,
          title: const Center(
            child: Text(
              "Pensaki Application ",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w700, letterSpacing: 2),
            ),
          ),
          actions:  [
              IconButton (
                onPressed: (){
                       debugPrint('hi');
                       setState(() {
                         result==0;
                       });
              },
               icon: const  Icon(Icons.clear))
              
              
          ],
        ),
        body: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const  Text(
                'Hello',
               ),
               Text(
                 'INR ${result} /-',
                
                //convertingfom string to int => int.parse(Stringvalue)
                // Converting from int to string => intvalue.toString
              
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: AutofillHints.creditCardExpirationDay,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue),
                    
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child:  TextField(
                  controller: textEdited,
                  style:const TextStyle(
                    
                    color: Color.fromARGB(255, 38, 39, 35),
                    fontSize: 30,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 237, 237),
                    hintText: "Please Enter amount",
                    contentPadding: EdgeInsetsDirectional.all(30),
                    prefixText: '\$',
                    suffixText: '/-',
                    prefixIconColor: Color.fromARGB(255, 19, 5, 4),
                    focusedBorder: border, // We called an variable
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton( //
                onPressed:(){
                  
                 setState(() { 
                //  debugPrint(textEdited.text.length);
                   result = double.parse(textEdited.text)*81;
                 });
                   }, ///Calling TextFieldController function to update with new value
                    
                style: TextButton.styleFrom(
                  padding: const EdgeInsetsDirectional.all(25),
                  backgroundColor: const Color.fromARGB(205, 111, 164, 195),
                  side: const BorderSide(
                      color: Colors.black54,
                      width: 2.5,
                      style: BorderStyle.solid),
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                child: const Text(
                  "convert",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
  

}