class Person {
  String name;
  String race;
  String className;

  int age;
  int lifePoint;

  double height;

  bool isMagic;

  List<String> skills;

  Person(this.name, this.race, this.className, this.age, this.lifePoint,
      this.height, this.isMagic, this.skills) {}

  ShowRecord() {
    print("\n---- Ficha do  Personagem ----");

    print("Nome:  $name\n"
        "Raça: $race\n"
        "Classe: $className\n"
        "Idade: $age\n"
        "Altura: $height\n"
        "Mágico?: $isMagic\n"
        "Habilidades: ");
    for (var i = 0; i < skills.length; i++) {
      print("Habilidade - {$i + 1}:  ${skills[i]}");
    }
  }
}
