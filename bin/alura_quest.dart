void main() {
  String name = "Cleitin";
  String race = "Elf";
  String classPerson = "Weizard";

  int age = 20;
  double height = 1.80;

  bool indication = true;

  int lifePoint = 100;
  int mp = 100;

  List<String> skills = ["Fireball", "BlackFire"];

  print("==== Característica do personagem ====\n");
  print("Nome: $name\n"
      "Raça: $race\n"
      "Classe: $classPerson\n"
      "Idade: $age\n"
      "Altura: $height\n"
      "Indicadores: $indication\n"
      "Pontos de vida: $lifePoint\n"
      "Pontos de magia: $mp\n"
      "Habilidades:");

  for (var i = 0; i < skills.length; i++) {
    print("Habilidade ${i + 1}:  ${skills[i]}");
  }

  print("\n\nVocê está em uma batalha real!");
  print("Você tem $mp pontos de magia");
  print("Você tem as habilidades: ");
  for (var i = 0; i < skills.length; i++) {
    print("Habilidade ${i + 1}:  ${skills[i]}");
  }
  print("\nBattle Royale");
  print("Começar a batalha!!\n");
  while (lifePoint > 0) {
    print("Pontos de vida:  $lifePoint");
    lifePoint -= 10;
  }
}
