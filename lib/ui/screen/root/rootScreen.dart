import 'package:fitness_app/ui/screen/home/home.dart';
import 'package:fitness_app/ui/screen/profile/profile.dart';
import 'package:fitness_app/ui/screen/workout/workout.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectindex=0;
 onclick(index){
   setState(() {
     selectindex=index;
   });
 }
 List<Widget>Screen=[home(),workout(),Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: Container(
       height: 80,
       decoration: BoxDecoration(
         gradient: LinearGradient(
          begin: Alignment.center,
             end: Alignment.center,
             colors: [
               Colors.pink,Colors.pinkAccent
         ])
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           InkWell(
               onTap: (){
                 onclick(0);
               },
               child: Text("Home")),
           InkWell(
               onTap: (){
                 onclick(1);
               },
               child: Text("worlout")),
           InkWell(
               onTap: (){
                 onclick(2);
               },
               child: Text("Profile")),

         ],

       ),
     ),
      body: Screen[selectindex],
    );
  }
}
