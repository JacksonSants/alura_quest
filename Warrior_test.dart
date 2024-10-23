import 'package:test/test.dart';
import '../model/Warrior.dart';
import '../model/Wizard.dart';

void main() {
  group("Teste de personagens", () {
    late Wizard megumi;
    late Warrior bell;

    setUp(() {
      megumi = Wizard("Megumi", "Humano", "Arquimago", 14, 500, 1.50, true,
          ["Explosion"], 500, "Cajado");

      bell = Warrior(
          "Bell Crunell",
          "Humano",
          "Guerreiro",
          14,
          1000,
          1.65,
          true,
          [
            "Fireball",
            "Liaris Freese",
            "Ox Slayer",
            "Argonaut",
            "Faca de Hestia"
          ],
          "Gatuno",
          3000);
    });

    test("Teste de atributos do Wizard", () {
      expect(megumi.name, equals("Megumi"));
      expect(megumi.race, equals("Humano"));
      expect(megumi.className, equals("Arquimago"));
      expect(megumi.lifePoint, equals(500));
    });

    test("Teste de atributos do Wizard", () {
      expect(bell.name, equals("Bell Crunell"));
      expect(bell.race, equals("Humano"));
      expect(bell.className, equals("Guerreiro"));
      expect(bell.lifePoint, equals(1000));
    });

    test("Teste da função de ataque para Wizard", () {
      megumi.attack(bell);
      expect(bell.lifePoint, lessThan(1000));
    });

    test("Teste da função de ataque para Warrior", () {
      bell.attack(megumi);
      expect(megumi.lifePoint, lessThan(500));
    });
    
  });
}
