import 'package:fitness_app/ui/screen/home/home.dart';
import 'package:fitness_app/ui/screen/profile/profile.dart';
import 'package:fitness_app/ui/screen/workout/workout.dart';
import 'package:flutter/widgets.dart';
import 'package:fitness_app/ui/screen/root/rootScreen.dart';

class RootModelView extends ChangeNotifier{
  int selectindex=0;
  onclick(index){
    selectindex=index;
    notifyListeners();
  }

List<Widget>Screen=[home(),workout(),Profile()];
}

