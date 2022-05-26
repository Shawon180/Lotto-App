import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:newproject1/Man/Man.dart';
import 'package:newproject1/Woman/Woman.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Expanded(
              flex: 3,
              child: Row(

                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  Text('Shopping ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,fontStyle: FontStyle.italic),),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text('Store Location ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 18,fontStyle: FontStyle.italic),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.location_on,color: Colors.blueAccent,)),
                ],
              ),
            ),

          ],
        ),),
       backgroundColor: Colors.black,
      body: SafeArea(

        child: ContainedTabBarView(
          tabs: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.man,color: Colors.white,size: 20,),
                Text('Man',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.woman,color: Colors.white,size: 20,),
                Text('Woman',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
              ],
            ),
          ],
          tabBarProperties: TabBarProperties(
            height: 52.0,
            indicatorColor: Colors.blue,
            indicatorWeight: 6.0,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[400],
          ),
          views: [
           Man(),
           Woman(),
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
