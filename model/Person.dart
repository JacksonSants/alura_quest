import 'dart:ffi';

import '../model/enum/LifeStatus.dart';
class Person {
  String name;
  String race;
  String className;

  int age;
  int lifePoint;

  double height;

  bool isMagic;

  List<String> skills;
  LifeStatus lifeStatus;

  Person(this.name, this.race, this.className, this.age, this.lifePoint,
      this.height, this.isMagic, this.skills, this.lifeStatus) {}

  void updateLifeStatus(int lifePoint) {
    this.lifePoint = lifePoint;
    if (lifePoint > 50) {
      lifeStatus = LifeStatus.Vivo;
    } else if (lifePoint > 0 && lifePoint <= 50) {
      lifeStatus = LifeStatus.Ferido;
    } else {
      lifeStatus = LifeStatus.Derrotado;
    }
  }

  ShowRecord() {
    print("\n---- Ficha do  Personagem ----");

    print("Nome:  $name\n"
        "Raça: $race\n"
        "Classe: $className\n"
        "Idade: $age\n"
        "Altura: $height\n"
        "Mágico?: $isMagic\n"
        "Status de vida: ${lifeStatus.name}\n"
        "Habilidades: ");
    for (var i = 0; i < skills.length; i++) {
      print("Habilidade - {$i + 1}:  ${skills[i]}");
    }
  }
}
