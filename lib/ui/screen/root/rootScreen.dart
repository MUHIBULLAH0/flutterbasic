import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/ui/screen/home/home.dart';
import 'package:fitness_app/ui/screen/profile/profile.dart';
import 'package:fitness_app/ui/screen/workout/workout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/ui/screen/root/root_screen_model.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
 //  int selectindex=0;
 // onclick(index){
 //   setState(() {
 //     selectindex=index;
 //   });
 // }
 // List<Widget>Screen=[home(),workout(),Profile()];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootModelView(),
      child:Consumer<RootModelView>(builder:(context, value, child) => Scaffold(
       bottomNavigationBar: Container(
         height: 80,
         decoration: BoxDecoration(
           gradient: pink,

         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [

             InkWell(
               onTap: (){
                 value.onclick(0);
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [

                   Icon(Icons.home,color: value.selectindex  ==0?Colors.white:Colors.grey.shade400),
                   Text("Home",style: TextStyle(color:value.selectindex==0?Colors.white:Colors.grey.shade400 ),),
                 ],
               ),
             ),
             InkWell(
               onTap: (){
                 value.onclick(1);
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Icon(Icons.directions_run_outlined,color: value.selectindex==1?Colors.white:Colors.grey.shade400),
                   Text("workout",style: TextStyle(color:value.selectindex==1?Colors.white:Colors.grey.shade400 ),),
                 ],
               ),
             ),
             InkWell(
               onTap: (){
                 value.onclick(2);
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                        Icon(Icons.account_circle_sharp,color: value.selectindex==2?Colors.white:Colors.grey.shade400),
                   Text("profile",style: TextStyle(color:value.selectindex==2?Colors.white:Colors.grey.shade400 ),)
                 ],
               ),
             ),

           ],

         ),
       ),
        body: value.Screen[value.selectindex],
      ),
      ),
    );
  }
}
