import 'dart:convert';


class Inactive {  

  String codigo;
  String nome_aluno;
  String dt_nascimento;
  String sexo;
  int ano_formacao;
  String localidade;
  String estado;
  String pai;
  String mae;
  Inactive({
    required this.codigo,
    required this.nome_aluno,
    required this.dt_nascimento,
    required this.sexo,
    required this.ano_formacao,
    required this.localidade,
    required this.estado,
    required this.pai,
    required this.mae,
  });


  Map<String, dynamic> toMap() {
    return {
      'codigo': codigo,
      'nome_aluno': nome_aluno,
      'dt_nascimento': dt_nascimento,
      'sexo': sexo,
      'ano_formacao': ano_formacao,
      'localidade': localidade,
      'estado': estado,
      'pai': pai,
      'mae': mae,
    };
  }

  factory Inactive.fromMap(Map<String, dynamic> map) {
    return Inactive(
      codigo: map['codigo'] ?? '',
      nome_aluno: map['nome_aluno'] ?? '',
      dt_nascimento: map['dt_nascimento'] ?? '',
      sexo: map['sexo'] ?? '',
      ano_formacao: map['ano_formacao']?.toInt() ?? 0,
      localidade: map['localidade'] ?? '',
      estado: map['estado'] ?? '',
      pai: map['pai'] ?? '',
      mae: map['mae'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Inactive.fromJson(String source) => Inactive.fromMap(json.decode(source));
}
