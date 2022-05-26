import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraWidget extends StatefulWidget{
  @override
  State createState() {
    // TODO: implement createState
    return CameraWidgetState();
  }

}
class CameraWidgetState extends State{
  PickedFile? imageFile=null;
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery"),
                leading: Icon(Icons.account_box,color: Colors.blue,),
              ),

              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera"),
                leading: Icon(Icons.camera,color: Colors.blue,),
              ),
            ],
          ),
        ),);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      child: Stack(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey
            ),
            child:( imageFile==null)?Icon(Icons.person,size: 50,): CircleAvatar(child: Image.file( File(  imageFile!.path),),radius: 60,),
          ),
          Positioned(
            bottom: 10,
            right: -8,
            child: TextButton(  onPressed: (){
              _showChoiceDialog(context);
            },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black,width: 2)),
                  child: Icon(Icons.camera_alt_outlined,size: 16,color: Colors.black87,)),
            ),
          )
        ],

      ),
    );
  }

  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
