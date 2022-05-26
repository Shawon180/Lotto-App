import 'package:flutter/material.dart';
class Woman extends StatefulWidget {
  const Woman({Key? key}) : super(key: key);

  @override
  State<Woman> createState() => _WomanState();
}

class _WomanState extends State<Woman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.white),
                    ),

                  ),
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Text('Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:Colors.blueAccent,letterSpacing: 1),
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Column(
              children: [
                Row(
                  children: [

                    Expanded(
                        flex: 1,
                        child: Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2021/02/Women_Red_Shirt_Lotto-500x500.jpg')),SizedBox(width: 5,height: 5,),
                    Expanded(
                        flex: 1,
                        child: Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2021/02/Cotton_Leggings_for_Women_REd_Blue_BD_5kl0r20@490-500x500.jpg')),SizedBox(width: 5,height: 5,),
                    Expanded(
                        flex: 1,
                        child: Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2022/05/8e54d6c7e14b75c9c0c5c851fcf6fd55-600x600.jpg')),SizedBox(width: 5,height: 5,),

                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [

                    Expanded(
                        flex: 1,
                        child: Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2020/05/LottoBD-Vest-White.jpg')),SizedBox(width: 5,height: 5,),
                    Expanded(
                        flex: 1,
                        child: Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2022/05/2bc0ce3922d8e332d428105d6d0ca327-500x500.jpg')),SizedBox(width: 5,height: 5,),
                    Expanded(
                        flex: 1,
                        child: Image.network('https://lotto.expressleather.com.bd/wp-content/uploads/2022/05/0adbdfbe540cae4e3592e330d8317780.jpg')),SizedBox(width: 5,height: 5,),

                  ],
                ),




              ],
            ),
        SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                      border: Border.all(width: 2.0, color:  Colors.white54),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
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
                              children: [
                                Text(' Price :BDT. 460TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
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
                                children: [
                                  Text(' Price :BDT. 360TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
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
                                children: [
                                  Text('Price :BDT. 2460TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
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
                                children: [
                                  Text('Price :BDT. 960TK',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.redAccent),),
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

      ),
    ),
    );
  }
}
