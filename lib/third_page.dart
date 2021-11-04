import 'package:batch_c_demo/my_home_page.dart';
import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

// global variables
String _email="jannatsuha@gmail.com";
String _password="123456suha";
final _formKey= GlobalKey<FormState>();
TextEditingController emailController= TextEditingController();
TextEditingController passwordController= TextEditingController();
bool passVisi= true;

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Form(
        key: _formKey,
        child: Padding(
          padding:  EdgeInsets.only(
            top: h*0.08,left: w*0.04,
              right: w*0.04,bottom: h*0.08
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Icon(Icons.account_box_outlined,
                      size: 60,color: Colors.purple,),
                    Text("LOG IN",style: TextStyle(
                      color: Colors.purple,fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),
                    ),
                  ],
                ),
               SizedBox(height: 20,),
               TextFormField(
                 controller: emailController,
                 validator: (text){
                   if(text == null || text.isEmpty){
                     return "Email is empty";
                   }
                   else if(text != _email)
                     {
                       return "Email is not correct";
                     }
                 },
                 decoration: InputDecoration(
                   hintText: "Enter Your Email",
                   hintStyle: TextStyle(color: Colors.purpleAccent),
                   contentPadding: EdgeInsets.all(8),
                   focusColor: Colors.purple,
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.purple),
                     borderRadius: BorderRadius.circular(5),
                   ),
                   suffixIcon: Icon(Icons.attach_email,
                   color: Colors.purple,),
                 ),
               ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: passVisi,
                  validator: (text){
                    if(text == null || text.isEmpty){
                      return "Password is empty";
                    }
                    else if(text.length <= 6){
                      return "Password should be atleast 6 character";
                    }
                    else if(text != _password){
                      return "Incorrect Password";
                    }
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.purpleAccent),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          if(passVisi== true)
                          passVisi=false;
                          else
                            passVisi=true;
                        });
                      },
                      child: Icon(Icons.remove_red_eye,
                        color: Colors.purple,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple
                  ),
                    onPressed: (){
                    if(_formKey.currentState!.validate()){
                      if(emailController.text == _email){
                        if(passwordController.text == _password){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)
                              =>MyHomePage()));
                        }
                      }
                    }
                    },
                    child: Text("Log In",style: TextStyle(
                      fontSize: 20
                    ),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
