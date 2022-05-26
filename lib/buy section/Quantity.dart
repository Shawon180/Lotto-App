import 'package:flutter/material.dart';
class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  int value=0;

  Increment (){
    setState((){
      value++;
    });
  }
  Decrement (){
    setState((){
      value--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(15)),
          Text('Quantity :',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),SizedBox(width: 10,),
          Container(
            height: 30,
            width: 30,
            child: FloatingActionButton(onPressed: (){
Decrement();
            },
              child: Icon(Icons.remove,color: Colors.white,),
              backgroundColor: Colors.redAccent,
            ),
          ),SizedBox(width: 10,),
          Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Colors
                        .redAccent //                   <--- border width here
                ),
              ),
              child: Center(
                child: Text(value.toString()),
              )
          ),SizedBox(width: 10,),
          Container(
            height: 30,
            width: 30,
            child: FloatingActionButton(onPressed: (){
Increment();
            },
              child: Icon(Icons.add,color: Colors.white,),
              backgroundColor: Colors.redAccent,
            ),
          ),
        ],
      );
  }
}
