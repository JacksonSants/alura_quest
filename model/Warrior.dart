import './Person.dart';
import 'abstract/Combate.dart';
import './enum/LifeStatus.dart';

class Warrior extends Person implements Combate{
  String Specialty;
  int defense;

  Warrior(String name, String race, String className, int age, int lifePoint, double? height, bool isMagic,  List<String> skills, LifeStatus lifeStatus, this.Specialty, this.defense) : super(name,  race, className, age, lifePoint, height, isMagic, skills, lifeStatus){}

  @override
  void showRecord() {
    super.ShowRecord();
    print("Especialidade: $Specialty\nDefesa: $defense");
  }
}