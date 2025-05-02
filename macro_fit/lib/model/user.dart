// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
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

    UserData({
        required this.id,
        required this.name,
        required this.age,
        required this.weight,
        required this.fatPerc,
        required this.muscle,
        required this.trainingFreq,
        required this.caloriesBrnd,
        required this.protein,
        required this.carbs,
        required this.fat,
        required this.target,
    });

    UserData copyWith({
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
    }) => 
        UserData(
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

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        name: json["name"],
        age: json["age"],
        weight: json["weight"]?.toDouble(),
        fatPerc: json["fatPerc"]?.toDouble(),
        muscle: json["muscle"]?.toDouble(),
        trainingFreq: json["trainingFreq"],
        caloriesBrnd: json["caloriesBrnd"],
        protein: json["protein"],
        carbs: json["carbs"],
        fat: json["fat"],
        target: json["target"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "weight": weight,
        "fatPerc": fatPerc,
        "muscle": muscle,
        "trainingFreq": trainingFreq,
        "caloriesBrnd": caloriesBrnd,
        "protein": protein,
        "carbs": carbs,
        "fat": fat,
        "target": target,
    };
}
