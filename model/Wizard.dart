import './Person.dart';
import './abstract/Icombate.dart';

class Wizard extends Person implements Icombate {
  int mana;
  String magicItem;

  Wizard(
      String name,
      String race,
      String className,
      int age,
      int lifePoint,
      double height,
      bool isMagic,
      List<String> skills,
      this.mana,
      this.magicItem)
      : super(name, race, className, age, lifePoint, height, isMagic, skills) {}

  @override
  ShowRecord() {
    super.ShowRecord();
    print("Mana:  $mana"
        "Item Mágico:  $magicItem");
  }

  castSpell() {
    print("\n${skills[0]}!!!");
  }

  @override
  void atacar(Person target) {
    if (lifePoint > 0) {
      castSpell();
      print("$name lançou um ataque contra ${target.name}!");
      target.lifePoint -= 500;
      if (target.lifePoint <= 0) {
        target.lifePoint = 0;
        print("${target.name} foi derrotado!");
      } else {
        print(
            "${target.name} perdeu 500 pontos de vida. Vida restante: ${target.lifePoint}");
      }
    } else {
      print("$name já está fora de combate e não pode atacar.");
    }
  }
}
