import 'package:flutter/material.dart';
import 'package:newproject1/DATA/Product.dart';
import 'package:provider/provider.dart';
import 'package:newproject1/buy%20section/SearchView.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
int value=0;
Increment (){
  setState((){
    value++;
  });
}
  List<Book> books = allBooks;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 20,
        centerTitle: true,
        title: Row(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Image.network('https://cdn.pixabay.com/photo/2013/07/12/18/20/shoes-153310_960_720.png',width: 40,height: 60,),
                  const Text('Lotto',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.bold,letterSpacing: 1,color:Colors.blue),),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 40,

              child: Expanded(
                flex: 1,
                child: Row(

                  children: [


                    Stack(

                      children: [
                        CircleAvatar(
                          radius:25,
                          child: CircleAvatar(
                              radius: 20,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,))),
                        ),
                        Positioned(
                          top: 3,
                            right: -0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(width: 1,color: Colors.red),
                                color: Colors.red
                              ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('0',style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        drawer: Drawer(
backgroundColor: Colors.black87,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'John Doe',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 25),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://cdn.pixabay.com/photo/2021/01/29/08/08/dog-5960092_960_720.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Payment',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.payment,color: Colors.blue,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,color: Colors.white10,),
              ListTile(
                title: const Text('Promus',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.card_giftcard_rounded,color: Colors.amber,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,color: Colors.white10,),
              ListTile(
                title: const Text('Help',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.help,color: Colors.blue,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,color: Colors.white10,),
              ListTile(
                title: const Text('Notification',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.notifications_active,color: Colors.red,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,color: Colors.white10,),
              ListTile(
                title: const Text('About Us',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.info_rounded,color: Colors.white,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,color: Colors.white10,),
              ListTile(
                title: const Text('Rate Us',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.star,color: Colors.yellowAccent,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,color: Colors.white10,),
              ListTile(
                title: const Text('Log In',style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.login,color: Colors.blue,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),

            ],
          ),

        ),
        
        body: SingleChildScrollView(
        child:SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin:EdgeInsets.fromLTRB(20, 0,20, 5),
                    child:  Text('Hello, John Deo !',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color:Colors.white),) ,
                  ),
                ],
              ), Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:  Column(
                      children: [
                        Row(
                          children: [
                            Text('Welcome to Lotto Shop ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color:Colors.blueAccent,fontStyle: FontStyle.italic),),
                            Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 18,),
                          ],
                        ),
                        Text('Happy Shopping ... ',style: TextStyle(fontSize: 12,color:Colors.white60,fontStyle: FontStyle.italic),),
                      ],
                    ) ,
                  ),
                ],
              ),

 //discount offer
 Stack(children: [
   Container(
 child:Image.network('https://cdn.pixabay.com/photo/2017/02/12/16/46/shoes-2060519_960_720.jpg',fit: BoxFit.cover,)
   ),
   Positioned(child: Container(
     margin: EdgeInsets.fromLTRB(40, 34, 4, 0),
     child: Row(
       children: [
         Icon(Icons.local_offer_outlined,color: Colors.amber,),
         Text('35% Discounts',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.lightGreenAccent,fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1),),
       ],
     ),
   ))
 ],),

              //latest offer
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      
                       border: Border.all(width: 2.0, color:  Colors.white54),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text('TODAY OFFERS',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color:Colors.blueAccent,letterSpacing: 1),
                    ),
                  )
                ],
              ),

              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70
                ),
                height: 200.0,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  padding: const EdgeInsets.all( 10),
                  itemBuilder: (BuildContext context,  index) {
                    var book =books[index];
                    return Container(
                      height: 180,
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Column(

                        children: [

                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>BookPage(book:book),
                            )),
                            child: Stack(
                              children: [
                                Image.network(book.urlImage,fit: BoxFit.cover,width: 180,height: 160,),
                                Positioned(
                                    top: 2,
                                    right: 10,
                                    child: IconButton(onPressed: (){
                                      Increment();
                                    }, icon: Icon(Icons.favorite_border,color: Colors.redAccent,))),
                                Positioned(
                                  top: 12,
                                  right: 8,
                                  child: Text(value.toString(),style: TextStyle(color: Colors.blueAccent),),),
                                Positioned(
                                  bottom: 15,
                                  left: 8.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(book.title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(book.div,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 10),),
                                            ],
                                          ),

                                        ],
                                      ),


                                    ],
                                  ),
                                ),

                                Positioned(
                                  bottom: 4,
                                  right: 8.0,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          InkWell(
                                              onTap: ()=>Navigator.push(context, MaterialPageRoute(
                                                builder: (context)=>BookPage(book:book),
                                              )),
                                              child: Icon(Icons.add_box_sharp,color: Colors.redAccent,size: 30,))
                                        ],
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )

                        ],

                      ),


                    );


                  },
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(

                        border: Border.all(width: 2.0, color:  Colors.white54),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text('LATEST OFFERS',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color:Colors.blueAccent,letterSpacing: 1),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12
                ),
                height: 250.0,
                child:ListView.builder(
                  itemCount: books.length,
                  padding: const EdgeInsets.all( 7),
                  itemBuilder: (BuildContext context,  index) {
                    var book =books[index];
                    return Container(
                      height: 90,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 3), // changes position of shadow
                            ),],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ListTile(
                            title: Row(
                              children: [
                                Expanded(child: Text(book.title,  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
                                SizedBox(width: 10,), 

                                Text(book.div),

                              ],
                            ),
                            leading: Image.network(book.urlImage,fit: BoxFit.cover,width: 65,height: 80,),
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>BookPage(book:book),
                            )),
                          ),

                        ],

                      ),


                    );


                  },
                ),
              ),



              //Our Product
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(

                        border: Border.all(width: 2.0, color:  Colors.white54),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text('Our Products',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color:Colors.redAccent,letterSpacing: 1),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),

              Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Stack(
                        children: [

                          Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2021/02/Women_Blue_Shirt_Lotto-500x500.jpg'),

                          Positioned(
                            bottom: 4,
                            child:  Column(
                              children: [
                                Row(
                                  children: [
                                    Text(' Women_Red_Shirt_Lotto',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Price :BDT. 460TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),),
                  SizedBox(height: 5,width: 5,),
                  Expanded(
                    flex: 1,
                    child: Stack(
                        children: [

                          Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2021/02/Cotton_Leggings_for_Women_REd_Blue_BD_5kl0r20@490.jpg'),

                          Positioned(
                            bottom: 4,
                            child:  Column(
                              children: [
                                Row(
                                  children: [
                                    Text(' Cotton_Leggings_for_Women',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Price :BDT. 360TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),),
                  SizedBox(height: 5,width: 5,),




                ],
              ),
              SizedBox(height: 10,),

              Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Stack(
                        children: [

                          Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2020/08/Blue-Wave-Shoes-for-Men-5-1.jpg'),

                          Positioned(
                            bottom: 4,
                            child:  Column(
                              children: [
                                Row(
                                  children: [
                                    Text(' Blue-Wave-Shoes',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('   Price :BDT. 2460TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),),
                  SizedBox(height: 5,width: 5,),
                  Expanded(
                    flex: 1,
                    child: Stack(
                        children: [

                          Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2022/05/7a801627860668099cb02828d9fc9a52.jpg'),

                          Positioned(
                            bottom: 4,
                            child:  Column(
                              children: [
                                Row(
                                  children: [
                                    Text(' LOTTO MEN’S SPORT',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Price :BDT. 841TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),),
                  SizedBox(height: 5,width: 5,),




                ],
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                        children: [

                          Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2020/05/Posh-Casual-Shoe-Jogging-Running.jpg'),

                          Positioned(
                            bottom: 4,
                            child:  Column(
                              children: [
                                Row(
                                  children: [
                                    Text(' Posh-Casual-Shoe',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('  Price :BDT. 960TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),),
                  SizedBox(height: 5,width: 5,),
                  Expanded(
                    flex: 1,
                    child: Stack(
                        children: [

                          Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2022/05/06d80b5623ec430a67ef505dd3fbae0a-500x500.jpg'),

                          Positioned(
                            bottom: 4,
                            child:  Column(
                              children: [
                                Row(
                                  children: [
                                    Text(' LOTTO SOFT SLIDE SLIPPER',style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Price :BDT. 860TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    ),),
                  SizedBox(height: 5,width: 5,),



                ],
              ),

            ],
          ),
        ) ,
    ),
    );
  }
}
