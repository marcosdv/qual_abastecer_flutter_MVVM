import 'package:flutter/foundation.dart';
import 'package:qual_abastecer/models/combustivel_model.dart';

class CombustivelViewModel extends ChangeNotifier {
  final _model = CombustivelModel();

  // Estado que a View vai observar
  String _gasolinaInput = "";
  String _etanolInput = "";
  String? _resultado; // Nullable para indicar que ainda não foi calculado
  String _mensagemErro = ""; // Para feedback ao usuário

  // Getters para a View acessar o estado (read-only)
  String get gasolinaInput => _gasolinaInput;
  String get etanolInput => _etanolInput;
  String? get resultado => _resultado;
  String get mensagemErro => _mensagemErro;

  set gasolinaInput(String value) {
    _gasolinaInput = value;
    _limparResultados();
    notifyListeners();
  }

  set etanolInput(String value) {
    _etanolInput = value;
    _limparResultados();
    notifyListeners();
  }

  void _limparResultados() {
    _resultado = null;
    _mensagemErro = "";
  }

  // Ação que a View chama ao pressionar o botão
  void calcular() {
    _mensagemErro = "";

    final double? gasolina = double.tryParse(_gasolinaInput.replaceAll(',', '.'));
    final double? etanol = double.tryParse(_etanolInput.replaceAll(',', '.'));

    if (gasolina == null || etanol == null) {
      _mensagemErro = "Por favor, insira valores válidos para Gasolina e Etanol.";
      _resultado = null;
      notifyListeners();
      return;
    }

    if (gasolina <= 0 || etanol <= 0) {
      _mensagemErro = "O valor de Gasolina e Etanol devem ser maiores que zero.";
      _resultado = null;
      notifyListeners();
      return;
    }

    // Atualiza o estado
    _resultado = _model.calcular(gasolina, etanol);

    // Notifica a View que o estado mudou
    notifyListeners();
  }
}