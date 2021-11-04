import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}
String avatarSrc= "https://thumbs.dreamstime.com/z/user-icon-9233164.jpg";
String btnText1="Button One";
final navigatorKey = GlobalKey<NavigatorState>();

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Jannatul Ferdous"),
        leading: IconButton(
            onPressed: () => SlideDrawer.
            of(context)!.toggle(),
            icon: Icon(Icons.menu_outlined)
        ),
      ),
      body:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img2.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter
                    .mode(Colors.black12.withOpacity(0.2), BlendMode.dstATop)
            )
        ),
        child: Column(
          children: [

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: width*0.25,
                    width: width*0.25,

                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:NetworkImage(avatarSrc),
                            fit: BoxFit.cover
                        ),
                        border:Border.all(width: 3,
                            color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(180)
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        SizedBox(
                          width: width*0.03,
                        ),
                        Column(
                          children: [
                            Text("3,617",style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                            ),),
                            Text("Posts")
                          ],
                        ),
                        SizedBox(
                          width: width*0.03,
                        ),
                        Column(
                          children: [
                            Text("6.5k",style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                            ),),
                            Text("Followers")
                          ],
                        ),
                        SizedBox(
                          width: width*0.03,
                        ),
                        Column(
                          children: [
                            Text("378",style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                            ),),
                            Text("Following")
                          ],
                        ),
                        SizedBox(
                          width: width*0.03,
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 4,left: 24,right: 24,bottom: 4
                              ),
                              child: Text("Message"),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 4,left: 4,right: 4,bottom: 4
                              ),
                              child: Icon(Icons.account_circle_rounded,size: 15,),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    btnText1="Button Pressed";
                  });
                },
                child: Text(btnText1)
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: width/5,
                      width: width/5,
                      child: Image.network(avatarSrc)
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ) ;
  }
}
