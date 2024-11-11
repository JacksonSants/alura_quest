class PersonDefeatedException implements Exception{
  String person;

  PersonDefeatedException(this.person);

  @override
  String toString() {
    return '$person foi derrotado(a).';
  }
}