import 'package:macro_fit/model/user.dart';

class UserState {
  String id;
  String name;
  int age;
  double weight;
  double fatPerc;
  double muscle;
  int trainingFreq;
  int caloriesBrnd;
  int protein;
  int carbs;
  int fat;
  String target;

  UserState({
    this.id = "",
    this.name ="",
    this.age = 0,
    this.weight = 0,
    this.fatPerc = 0,
    this.muscle = 0,
    this.trainingFreq = 0,
    this.caloriesBrnd= 0,
    this.protein = 0,
    this.carbs = 0,
    this.fat = 0,
    this.target = "",
  });

  UserState copyWith({
    String? id,
    String? name,
    int? age,
    double? weight,
    double? fatPerc,
    double? muscle,
    int? trainingFreq,
    int? caloriesBrnd,
    int? protein,
    int? carbs,
    int? fat,
    String? target,
  }) => UserState(
    id: id ?? this.id,
    name: name ?? this.name,
    age: age ?? this.age,
    weight: weight ?? this.weight,
    fatPerc: fatPerc ?? this.fatPerc,
    muscle: muscle ?? this.muscle,
    trainingFreq: trainingFreq ?? this.trainingFreq,
    caloriesBrnd: caloriesBrnd ?? this.caloriesBrnd,
    protein: protein ?? this.protein,
    carbs: carbs ?? this.carbs,
    fat: fat ?? this.fat,
    target: target ?? this.target,
  );

  toUser() => UserData(
    id: id,
    age: age,
    name: name,
    weight: weight,
    fatPerc: fatPerc,
    muscle: muscle,
    trainingFreq: trainingFreq,
    caloriesBrnd: caloriesBrnd,
    protein: protein,
    carbs: carbs,
    fat: fat,
    target: target,
  );
}
