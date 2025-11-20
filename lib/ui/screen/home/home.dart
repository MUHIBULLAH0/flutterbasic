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
      body: Column(
        children: [
          Container(

            height:162 ,
            width: 380,
            child: Stack(
              children: [
                Image.asset("assets/icon_assets/homered.png",width:380,fit:BoxFit.cover),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                    child: Image.asset("assets/icon_assets/fittness.png",)),
              ],
            ),
          )

        ],
      ),

    );
  }
}
