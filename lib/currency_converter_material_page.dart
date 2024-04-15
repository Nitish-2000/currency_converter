import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context){

    const border =  OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 20, 19, 19),
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50))
                );
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 201, 218, 203),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("0",
            style: TextStyle(
              fontSize: 50,
              fontFamily:AutofillHints.creditCardExpirationDay,
              fontWeight: FontWeight.w900,
              color: Colors.blue
            ),),
             Container(
              padding: const EdgeInsets.all(10.0),
              child:const TextField(
                
                style: TextStyle(
                  color: Color.fromARGB(255, 38, 39, 35),
                  fontSize: 30,
                 ),
                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 237, 237),
                  hintText: "Please Enter amount",
                  prefixIcon: Icon(Icons.currency_rupee),
                  prefixIconColor: Color.fromARGB(255, 19, 5, 4) ,
                  focusedBorder: border, // We called an variable
                  enabledBorder:border,
                  
                  ),
                  keyboardType: TextInputType.number,
              
                ),
            ),
          ],
        ),
      ) 
    );
  }
}