import './Person.dart';
import 'abstract/Combate.dart';
import './enum/LifeStatus.dart';

class Warrior extends Person implements Combate{
  String Specialty;
  int defense;

  Warrior(String name, String race, String className, int age, int lifePoint, double height, bool isMagic,  List<String> skills, LifeStatus lifeStatus, this.Specialty, this.defense) : super(name,  race, className, age, lifePoint, height, isMagic, skills, lifeStatus){}

  @override
  ShowRecord() {
    super.ShowRecord();
    print("Especialidade:  $Specialty"
          "Defesa:  $defense");
  }
  
  @override
  void attack(Person target) {
    if (lifePoint > 0) {
      print("\n${skills[4]}!!!");
      print("$name lançou um ataque contra ${target.name}!");
      target.lifePoint -= 400;
      if (target.lifePoint <= 0) {
        target.lifePoint = 0;
        print("${target.name} foi derrotado!");
      } else {
        print("${target.name} perdeu 200 pontos de vida. Vida restante: ${target.lifePoint}");
      }
    } else {
      print("$name já está fora de combate e não pode atacar.");
    }
  }
  
}
