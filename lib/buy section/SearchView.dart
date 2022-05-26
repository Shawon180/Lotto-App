import 'package:flutter/material.dart';
import 'package:newproject1/DATA/Product.dart';
import 'package:newproject1/buy%20section/Quantity.dart';

class BookPage extends StatelessWidget {


  final Book book;

 BookPage({Key? key, required this.book}) : super(key: key);

  int value=0;

  @override

  Widget build(BuildContext context) =>


      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          ),
          title: Text(
            book.title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                book.urlImage,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,

              ),
//quantity
              SizedBox(height: 10,),
             Buy(),


              Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: [
                          Text('Price : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black87),),
                         Text(book.div)
                        ],
                      )),
                ],
              ),
Row(
  children: [
    Container(
      margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
        child: Row(
          children: [
            Text('Color :',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 18),),
            Text('BLACK , BLUE')
          ],
        )),
  ],
),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: Row(
          children: [
            Text('Rate us : '),Icon(Icons.star,color: Colors.yellow,)
            ,Icon(Icons.star,color: Colors.yellow,),
            Icon(Icons.star,color: Colors.yellow,),
            Icon(Icons.star,color: Colors.yellow,),
            Icon(Icons.star,color: Colors.yellow,)
          ],
        )),
  ],
),

              //Rate US


//details
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(20)),

                  Container(
                      margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Row(
                        children: [
                          Text('Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                        ],
                      )),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Center(
                            child: Text(book.details,style: TextStyle(fontSize: 18,),)),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(20)),

                  Container(
                    color: Colors.redAccent,
                    width: 150,
                    child: TextButton(onPressed: (){},
                      child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1,fontSize: 20),),

                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    color: Colors.redAccent,
                    width: 150,
                    child: TextButton(onPressed: (){},
                      child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1,fontSize: 20),),

                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      );

}
