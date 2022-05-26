import 'package:flutter/material.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:newproject1/MyHomePage.dart';
class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  String name ='John Deo';
  String email ='johndeo888@gmail.com';
  @override
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Day / night switcher example',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(

      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(

            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 10, -0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    DayNightSwitcherIcon(
                      isDarkModeEnabled: isDarkModeEnabled,
                      onStateChanged: onStateChanged,
                    ),

                  ],),
                  
                  
                ),

                CameraWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),),
                IconButton(onPressed: (){}, icon:Icon(Icons.edit))
              ],
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(email.toString(),style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.facebook,color: Colors.blueAccent,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,color: Colors.redAccent,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.account_box,color: Colors.amber,)),

                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.amber
                  ),
                  child: TextButton(onPressed: (){},child:  Text('Upgrated to Pro',style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15,letterSpacing: 1 ),),),
                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  margin:EdgeInsets.fromLTRB(30, 5, 30, 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lock),
                      Text(' Privacy',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,letterSpacing: 1 ),),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin:EdgeInsets.fromLTRB(30, 5, 30, 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.punch_clock),
                      Text(' Purches History',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,letterSpacing: 1 ),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin:EdgeInsets.fromLTRB(30, 5, 30, 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline),
                      Text(' Help & Support',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,letterSpacing: 1 ),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin:EdgeInsets.fromLTRB(30, 5, 30, 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.settings),
                          Text(' Setting',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,letterSpacing: 1 ),),


                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin:EdgeInsets.fromLTRB(30, 5, 30, 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_circle),
                          Text(' Invite a Friend',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,letterSpacing: 1 ),),


                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin:EdgeInsets.fromLTRB(30, 5, 30, 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.login),
                      Text(' Logout',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,letterSpacing: 1 ),),
                    ],
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Called when the state (day / night) has changed.
  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}