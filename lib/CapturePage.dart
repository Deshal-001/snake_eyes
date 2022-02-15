import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class capturePage extends StatefulWidget {
  const capturePage({Key? key}) : super(key: key);

  @override
  _capturePageState createState() => _capturePageState();
}

class _capturePageState extends State<capturePage> {
  File? image;
  Future pickImage(ImageSource source) async{
  try {
    final image=await ImagePicker().pickImage(source: source);
    if(image==null) return;
    final imageTemp=File(image.path);
    setState(() {
      this.image=imageTemp;
    });
  } on PlatformException catch (e)
   {
     print("Failed to pick image $e!");
  }


  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Capture"),
        backgroundColor: Color(0xFF0C3823),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(6),
                  )
                  ,child: RaisedButton.icon(autofocus: true,onPressed: (){ pickImage(ImageSource.camera);}, label: Text("Capture"),icon: Icon(FontAwesomeIcons.camera))),

              Container(
                  margin: EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(6),
                  )
                  ,child: RaisedButton.icon(autofocus: true,onPressed: (){pickImage(ImageSource.gallery);}, label: Text("Gallery"),icon: Icon(FontAwesomeIcons.fileImage),)),
              image !=null?Image.file(image!
              ,fit: BoxFit.cover,):Image(image: AssetImage("assest/snakeEyeLogo.jpg"),)




            ],
          ),
        ),
      ),
    );
  }
}
