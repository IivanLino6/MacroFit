import 'package:flutter/material.dart';
import 'package:macro_fit/view/init/user_state.dart';

class InitViewmodel extends ChangeNotifier {
  //State variables
  UserState _state = UserState();

  int _selectedCardIndex = -1;
  int get selectedCardIndex => _selectedCardIndex;

  int _selectedFreqIndex = -1;
  int get selectedFreqIndex => _selectedCardIndex;
  void changeName(String name){
    _state = _state.copyWith(name: name);
  }
   void changeWeight(double weight){
    _state = _state.copyWith(weight: weight);
  }
   void changeFatPerc(double fat){
    _state = _state.copyWith(fatPerc: fat);
  }
  void selecFreq(int index){
    _selectedFreqIndex = index;
    _state = _state.copyWith(trainingFreq: index);
  }
  void selectCard(int index) {
    _selectedCardIndex = index;
    if (index == 1) {
      _state = _state.copyWith(trainingFreq: 1);
    } else if (index == 2) {
      _state = _state.copyWith(trainingFreq: 2);
    } else if (index == 3) {
      _state = _state.copyWith(trainingFreq: 3);
    }
    notifyListeners();
  }
  void changeTarget(String target) {
    _state = _state.copyWith(target: target);
    notifyListeners();
  }
  void changeActFreq(String value) {
    int numeric = int.parse(value);
    _state = _state.copyWith(trainingFreq: numeric);
    notifyListeners();
  }
}
