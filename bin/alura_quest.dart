import '../model/Warrior.dart';
import '../model/Wizard.dart';

void main() {
  Wizard megumi = new Wizard(
      "Megumi", "Humano", "Arquimago", 14, 1.50, true, 500, ["Explosão"], 10000, "cajado");
  megumi.ShowRecord();
  megumi.CastSpell();

  Warrior bell = new Warrior(
      "Bell Crunell", "Humano", "Guerreiro", 14, 1.65, true, 1000, ["Fireball", "Liaris Freese", "Ox Slayer", "Argonaut", "Faca de Hestia"], 3000, 500, "Gatuno");
  bell.ShowRecord();
}
