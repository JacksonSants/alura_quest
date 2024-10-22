// class person
class Person {
  String name;
  String race;
  String className;
  int age;
  double height;
  bool isMagic;
  int lifePoint;
  List<String> ability;

  Person(this.name, this.race, this.className, this.age, this.height,
      this.isMagic, this.lifePoint, this.ability) {}

  void ShowRecord() {
    print("------ ficha do personagem ------");
    print("Nome: $name\n"
        "Raça: $race\n"
        "Classe: $className\n"
        "Idade: $age\n"
        "Altura: $height\n"
        "Magia?: $isMagic\n"
        "Pontos de vida: $lifePoint\n"
        "Habilidades que o persongaem possui: ");
    for (var i = 0; i < ability.length; i++) {
      print("Habilidade: ${i + 1} - ${ability[i]}");
    }
  }
}


//class wizard
import './Person.dart';

class Warrior extends Person {
  int strenght;
  int defense;
  String fightingStyle;

  Warrior(
      String name,
      String race,
      String className,
      int age,
      double height,
      bool isMagic,
      int lifePoint,
      List<String> ability,
      this.strenght,
      this.defense,
      this.fightingStyle)
      : super(name, race, className, age, height, isMagic, lifePoint, ability);

  @override
  void ShowRecord() {
    super.ShowRecord();
    print("Forca: $defense"
        "\nDefesa: $strenght"
        "\Estilo de luta: $fightingStyle");
  }
}


//class Warrior
import './Person.dart';

class Wizard extends Person {
  int mana;
  String magicItem;

  Wizard(
      String name,
      String race,
      String className,
      int age,
      double height,
      bool isMagic,
      int lifePoint,
      List<String> ability,
      this.mana,
      this.magicItem)
      : super(name, race, className, age, height, isMagic, lifePoint, ability);

  @override
  void ShowRecord() {
    super.ShowRecord();
    print("Mana: $mana"
        "\nItem Mágico: $magicItem");
  }

  void CastSpell() {
    while (mana >= 0) {
      print("${ability[0]}");
      print("Você lançou um feitiço!\n");
      mana -= 2000;
    }
  }
}
