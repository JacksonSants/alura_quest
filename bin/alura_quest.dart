import '../model/enum/Spell.dart';
import '../model/Wizard.dart';
import '../model/Warrior.dart';
import '../model/enum/LifeStatus.dart';
import '../model/Person.dart';
import '../model/Exception/PersonDefeatedException .dart';

void main() {
  try {
    // Criação do personagem
    Person person1 = Person(
      "Jinx",
      "Humano",
      "Atirador",
      17,
      100,
      1.60,
      true,
      ["Pow-Pow"],
      LifeStatus.Vivo,
    );

    // Criação do personagem
    Person person2 = Person(
      "Caitlyn",
      "Humano",
      "Atirador",
      20,
      100,
      null,
      true,
      ["Rifle Hextec"],
      LifeStatus.Vivo,
    );

    Wizard Merlin = Wizard(
      "Merlin",
      "Humano",
      "Mago",
      50,
      120,
      1.75,
      true,
      ["Feitiço de Fogo", "Escudo Arcano"],
      LifeStatus.Vivo,
      100,
      "Cajado do Dragão",
      Spell.relampaggo,
    );

    // Instância de um mago sem altura especificada (null)
    Wizard Garp = Wizard(
      "Garp",
      "Maia",
      "Mago Cinzento",
      100,
      130,
      null, // Altura é nula
      true,
      ["Relâmpago"],
      LifeStatus.Vivo,
      150,
      "Cajado de Madeira",
      Spell.Fogo,
    );

    Warrior Grommash = Warrior(
    "Grommash",
    "Orc",
    "Berserker",
    45,
    200,
    null,  // Altura é nula
    false,
    ["Machado Fúria"],
    LifeStatus.Vivo,
    "Ofensivo",
    60,
  );

  Warrior Arthas = Warrior(
    "Arthas",
    "Humano",
    "Paladino",
    30,
    150,
    1.90,
    false,
    ["Espada Sagrada", "Escudo Divino"],
    LifeStatus.Vivo,
    "Defensor",
    40,
  );

    // Exibe o registro atualizado do personagem
    person1.ShowRecord();
    person2.ShowRecord();
    print("-----------Instacia de  Wizard-----------"); 
    Merlin.ShowRecord();
    
    print("-----------Instacia de Wizard null-----------"); 
    Garp.ShowRecord();

    print("-----------Instacia de Warrior null-----------"); 
    Grommash.ShowRecord();

    print("-----------Instacia de Warrior-----------"); 
    Arthas.ShowRecord();

    person1.attack(person2);
    person1.attack(person2);
  } on PersonDefeatedException catch (e) {
    print("Game over: ${e.toString()}");
  }
}
