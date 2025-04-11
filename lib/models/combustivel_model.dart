class CombustivelModel {
  String calcular(double valorGasolina, double valorEtanol) {
    return (valorEtanol <= (valorGasolina * 0.7)) ? "Etanol" : "Gasolina";
  }
}