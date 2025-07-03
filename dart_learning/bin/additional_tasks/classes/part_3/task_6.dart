class Temperature{
  Temperature(this.celsius){
    final f = celsius * 1.8 + 32;
    print('Температура у фаренгейтах: $f');
  }

  double celsius;
}
