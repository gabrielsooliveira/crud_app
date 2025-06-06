import 'dart:math';

class GerarNumeroService {
  static int gerarNumeroAleatorio(int maximoNumber) {
    Random random = Random();
    return random.nextInt(maximoNumber);
  }
}