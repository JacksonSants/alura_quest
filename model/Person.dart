import 'dart:ffi';

import '../model/enum/LifeStatus.dart';
import 'abstract/Combate.dart';
import 'Exception/PersonDefeatedException .dart';

class Person implements Combate{
  String name;
  String race;
  String className;

  int age;
  int _lifePoint;

  double? height;

  bool isMagic;

  List<String> skills;
  LifeStatus lifeStatus;

  Person(this.name, this.race, this.className, this.age, this._lifePoint,
      this.height, this.isMagic, this.skills, this.lifeStatus) {
    updateLifeStatus(_lifePoint);
    if(_lifePoint < 0){
      throw ArgumentError("O valor dos pontos de vida não pode ser negativo");
    }    
  }

  int get lifePoint => _lifePoint;

  set lifePoint(int value) {
    if (value < 0) {
      throw ArgumentError("O valor dos pontos de vida não pode ser negativo");
    }
    _lifePoint = value;
    updateLifeStatus(_lifePoint);
  }

  void updateLifeStatus(int lifePoint) {
    if (lifePoint > 50) {
      lifeStatus = LifeStatus.Vivo;
    } else if (lifePoint > 0 && lifePoint <= 50) {
      lifeStatus = LifeStatus.Ferido;
    } else {
      lifeStatus = LifeStatus.Derrotado;
      throw PersonDefeatedException(name);

    }
  }

  void ShowRecord() {
    print("\n---- Ficha do Personagem ----");

    print("Nome:  $name\n"
        "Raça: $race\n"
        "Classe: $className\n"
        "Idade: $age\n"
        "Pontos de vida: $_lifePoint\n"
        "Altura: ${height != null ? height : "Não especificada"}\n"
        "Mágico?: $isMagic\n"
        "Status de vida: ${lifeStatus.name}\n"
        "Habilidades: ");
    for (var i = 0; i < skills.length; i++) {
      print("Habilidade - ${i + 1}:  ${skills[i]}");
    }
  }

  void takeDamage(int damage) {
    lifePoint -= damage;
    if (lifePoint <= 0) {
      lifePoint = 0;
      lifeStatus = LifeStatus.Derrotado;
      throw PersonDefeatedException(name);
    } else if (lifePoint <= 50) {
      lifeStatus = LifeStatus.Ferido;
    }
  }

  @override
  void attack(Person target) {
    if (target.lifeStatus == LifeStatus.Derrotado) {
      print("$name atacou ${target.name} - Pontos de vidas  de ${target.name}: ${target.lifePoint}");
      throw PersonDefeatedException(name);
    } else {
      target.takeDamage(50);
      print("$name atacou ${target.name} - Pontos de vidas  de ${target.name}: ${target.lifePoint}");
    }
  }
}