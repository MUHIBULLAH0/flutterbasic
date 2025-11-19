import 'package:fitness_app/core/constant/auth_decor.dart';
import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/core/constant/string.dart';
import 'package:fitness_app/ui/screen/root/rootScreen.dart';
import 'package:flutter/material.dart';


class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  final _login=GlobalKey<FormState>();

  final _sign= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/static_assets/singbg.png"), fit: BoxFit.cover),

          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 100 , left: 10 ,right: 10),
              height: 443,
              width: 353,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 16),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink
                      ),
                      child: Image.asset("assets/icon_assets/fitnesslogo.png", scale: 4,),
                    ),
                    SizedBox(height: 2,),
                    Container(margin: EdgeInsets.only(left: 80 , right: 80),
                      child: TabBar(
                          labelColor: Colors.pink,
                          // indicator: UnderlineTabIndicator(
                          //   borderSide: BorderSide(width: 3 , color: pinkColor),
                          //   insets: EdgeInsets.symmetric(horizontal: 30)
                          // ),
                          unselectedLabelColor: Color(0xff909090),
                          indicatorColor: Colors.pink,
                          indicatorWeight: 2,
                          // indicatorPadding: EdgeInsets.only(left:   ,right: 10),
                          indicatorSize: TabBarIndicatorSize.tab,


                          tabs: [
                            Tab(text: "Login",),
                            Tab(text: "Signup",),
                          ]),

                    ),
                    SizedBox(height: 20,),
                    Expanded(
                      child: TabBarView(
                          children: [

                            Form(
                              key: _login,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 297,
                                      height: 42,

                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.white,
                                          spreadRadius:0,
                                          offset: Offset(-2, 4),
                                        )],

                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if(value!.isEmpty || value==null)
                                          {
                                            return "please enter your username,";
                                          }
                                          else
                                            return null;
                                        },
                                        decoration: authDecoration,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16,),

                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 297,
                                      height: 42,

                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.white,

                                          spreadRadius:0,
                                          offset: Offset(-2, 4),
                                        )],

                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if(value!.length<8){
                                            return "plase enter pass 8";
                                          }
                                          return null;

                                        },
                                        decoration: authDecoration. copyWith(hintText: "Password"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.topRight,
                                      child: TextButton(onPressed: (){}, child: Text("forgot Password?" , style: TextStyle(color: Colors.pink, ),))),


                                  Container(
                                    width: 297,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                    ),
                                    child: TextButton(onPressed: (){
                                      if(_login.currentState!.validate()){
                                        Navigator.push(context,MaterialPageRoute(builder:(context) => RootScreen(), ));
                                      }
                                    }, child: Text("login", style: TextStyle(color: Colors.white ,fontSize: 16 , fontWeight: FontWeight.w600),)),
                                  ),




                                ],

                              ),
                            ),
                            Form(
                              key: _sign,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 297,
                                      height: 42,

                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 8,
                                          spreadRadius:0,
                                          offset: Offset(-2, 4),
                                        )],

                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if(value!.isEmpty || value==null){
                                            return "please enter your username";
                                          }
                                          else
                                            return null;
                                        },
                                        decoration: authDecoration,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 297,
                                      height: 42,

                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 8,
                                          spreadRadius:0,
                                          offset: Offset(-2, 4),
                                        )],

                                      ),
                                      child: TextFormField(

                                        decoration: authDecoration. copyWith(hintText: "Email"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 297,
                                      height: 42,

                                      decoration: BoxDecoration(
                                        boxShadow: [BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 8,
                                          spreadRadius:0,
                                          offset: Offset(-2, 4),
                                        )],

                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if(value!.length<=8){
                                            return "please enter your password greater than 8";
                                          }
                                          return null;
                                        },
                                        decoration: authDecoration. copyWith(hintText: "Password"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8,),

                                  Container(
                                    width: 297,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                    ),
                                    child: TextButton(onPressed: (){

                                    }, child: Text("signup", style: TextStyle(color: Colors.white ,fontSize: 16 , fontWeight: FontWeight.w600),)),
                                  ),




                                ],

                              ),
                            ),

                          ]),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}






