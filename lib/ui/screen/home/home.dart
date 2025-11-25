import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffFE2B5F),),),
            Column(

              children: [
                Row(
                  children: [
                    Text("Find A",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black),),
                    SizedBox(width: 8,),
                    Text("Challenge",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xffFE2B5F)),),
                    SizedBox(width: 100,),
                    Container(
                      height:18,
                      width:18,
                      child: Icon(Icons.search,color:Color(0xffFF809F),),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
        child: Container(
          margin: EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Container(
                height:162 ,
                width: 380,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/icon_assets/homered.png",width:336,fit:BoxFit.cover),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                                child: Image.asset("assets/icon_assets/fittness.png",)),
                         Container(
                           margin: EdgeInsets.only(top: 10),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               RichText(text: TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),children: [
                                   TextSpan(text: "     March"),
                                   TextSpan(text: " and \n",style: TextStyle(fontWeight: FontWeight.w400)),
                                   TextSpan(text: "     clap"),
                                   TextSpan(text: " workout",style: TextStyle(fontWeight: FontWeight.w400)),
                                 ]
                                 )
                                 ),
                               SizedBox(height: 2,),
                               Row(
                                 children: [
                                   SizedBox(width: 25,),
                                   Container(
                                     height: 10,
                                     width: 10,
                                     child: Image.asset("assets/icon_assets/graph.png"),
                                   ),
                                   Text("30 Days Challenge")
                                 ],
                               )
                             ],
                           ),
                         )

                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
