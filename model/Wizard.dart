import './Person.dart';
import 'abstract/Combate.dart';
import './enum/LifeStatus.dart';
import '../model/enum/Spell.dart';

class Wizard extends Person implements Combate {
  int mana;
  String magicItem;
  Spell spell;
  Map<Spell, int> spells; // Atributo para armazenar feitiços com seus poderes

  Wizard(
      String name,
      String race,
      String className,
      int age,
      int lifePoint,
      double height,
      bool isMagic,
      List<String> skills,
      LifeStatus lifeStatus,
      this.mana,
      this.magicItem,
      this.spell)
      : spells = {}, // Inicialização do mapa feitiços como vazio
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

  void castSpell() {
    print("\n${skills[0]}!!!");
  }

  @override
  void attack(Person target) {
    if (lifePoint > 0) {
      castSpell();
      print("$name lançou um ataque contra ${target.name}!");
      target.lifePoint -= 500;
      if (target.lifePoint <= 0) {
        target.lifePoint = 0;
        print("${target.name} foi derrotado!");
      } else {
        print("${target.name} perdeu 500 pontos de vida. Vida restante: ${target.lifePoint}");
      }
    } else {
      print("$name já está fora de combate e não pode atacar.");
    }
  }
}
