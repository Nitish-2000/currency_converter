import 'package:flutter/cupertino.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget {   //stfl is an code snippet
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CurrencyConverterCupertinoPage> {
   double result = 0;
   final TextEditingController textEdited = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //  debugPrint('Main Widget');


    return CupertinoPageScaffold(
        backgroundColor: const Color.fromARGB(255, 201, 218, 203),
        navigationBar:const CupertinoNavigationBar(
          backgroundColor:  Color.fromARGB(173, 77, 110, 81),
          // elevation: 2,
          middle: Center(
            child: Text(
              "Pensaki Application ",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w700, letterSpacing: 2),
            ),
          ),
        
        ),
        child: Center(
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
                    color: CupertinoColors.activeBlue),
                    
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child:  CupertinoTextField(
                  placeholder:"Please Enter amount",
                  prefix:const Text('\$'),
                  suffix:const Text('/-'),
                  controller: textEdited,
                  style:const TextStyle(
                    
                    color: Color.fromARGB(255, 38, 39, 35),
                    fontSize: 30,
                  ),
                  decoration:  BoxDecoration(
                    color: CupertinoColors.label,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              CupertinoButton( 
                
                onPressed:(){
                 setState(() { 
                //  debugPrint(textEdited.text.length);
                   result = double.parse(textEdited.text)*81;
                 });
                   }, ///Calling TextFieldController function to update with new value
                   color: CupertinoColors.activeBlue  ,

               
                child: const Text(
                  "convert",
                  style: TextStyle(
                    color: CupertinoColors.black,
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