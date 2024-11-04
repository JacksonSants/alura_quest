import '../model/enum/Spell.dart';
import '../model/Wizard.dart';
import '../model/enum/LifeStatus.dart';
import '../model/Person.dart';

void main() {
  Person person1 = new Person(
    "Diego",
    "Humano",
    "Arquimago",
    20,
    10,
    1.50,
    true,
    ["Explosion"],
    LifeStatus.Vivo,
  );
  person1.updateLifeStatus(person1.lifePoint);
  person1.ShowRecord();

  Wizard mago = Wizard(
    "Gandalf",
    "Humano",
    "Mago",
    1000,
    100,
    1.80,
    true,
    ["Explosão de Fogo", "Relâmpago"],
    LifeStatus.Vivo,
    500,
    "Cajado Mágico",
    Spell.Fogo,
  );

  // Adicionando feitiços ao mapa
  mago.adicionarFeitico(Spell.Fogo, 100);
  mago.adicionarFeitico(Spell.relampaggo, 80);

  // Exibindo o registro do mago com os feitiços adicionados
  mago.ShowRecord();
}
