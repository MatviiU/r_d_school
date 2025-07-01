class Temperature{
  Temperature(this.celsius){
    double f = celsius * 1.8 + 32;
    print('Температура у фаренгейтах: $f');
  }

  double celsius;
}