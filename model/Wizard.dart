import './Person.dart';
import 'abstract/Combate.dart';
import './enum/LifeStatus.dart';
import '../model/enum/Spell.dart';

class Wizard extends Person implements Combate {
  int mana;
  String magicItem;
  Spell spell;
  Map<Spell, int> spells;

  Wizard(
      String name,
      String race,
      String className,
      int age,
      int lifePoint,
      double? height,
      bool isMagic,
      List<String> skills,
      LifeStatus lifeStatus,
      this.mana,
      this.magicItem,
      this.spell)
      : spells = {},
        super(name, race, className, age, lifePoint, height, isMagic, skills, lifeStatus);

  // Método para adicionar feitiços ao mapa
  void adicionarFeitico(Spell wizardSpells, int poder) {
    spells[wizardSpells] = poder;
    print("Feitiço ${wizardSpells.name} adicionado com poder $poder.");
  }

  @override
  void ShowRecord() {
    super.ShowRecord();
    print("Mana: $mana\n"
          "Item Mágico: $magicItem\n"
          "Feitiços: ");
    spells.forEach((spells, poder) {
      print("Feitiço: ${spells.name}, Poder: $poder");
    });
  }
}