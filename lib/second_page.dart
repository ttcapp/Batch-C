import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

String avatarSrc= "https://thumbs.dreamstime.com/z/user-icon-9233164.jpg";
double conHeight=50;
double conWidth=50;

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
              setState(() {
                conWidth=60;
                conHeight=60;
              });
            },
            onTap: (){
              setState(() {
                conHeight=200;
                conWidth=200;
              });
            },
            child: AnimatedContainer(
                height: conHeight,
                width: conWidth,
                duration: Duration(milliseconds: 6000),
                child: Image.network(avatarSrc)
            ),
          ),
        ],
      ),
    );
  }
}
