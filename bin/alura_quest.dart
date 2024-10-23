import '../model/Warrior.dart';
import '../model/Wizard.dart';

void main() {
  Wizard megumi = new Wizard(
    "Megumi",
    "Humano", 
    "Arquimago", 
    14, 
    500, 
    1.50,
    true,
    ["Explosion"], 
    500, 
    "Cajado");
  megumi.ShowRecord();
  megumi.castSpell();

  Warrior bell = new Warrior(
      "Bell Crunell",
      "Humano",
      "Guerreiro",
      14,
      1000,
      1.65,
      true,
      ["Fireball", "Liaris Freese", "Ox Slayer", "Argonaut", "Faca de Hestia"],
      "Gatuno",
      3000);
  bell.ShowRecord();

  print("\n!!!BATTLE ROYALE!!!\n");

  megumi.atacar(bell);
  bell.atacar(megumi);
  megumi.atacar(bell);
}
