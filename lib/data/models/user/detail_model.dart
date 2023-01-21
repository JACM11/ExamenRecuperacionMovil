class DetailModel{
   int? TipoVeiculo;
    String? Valor;
    String? Marca;
    String? Modelo;
    String? CodigoFipe;

  DetailModel({
required this.TipoVeiculo,
   required  this.Valor,
   required this.Marca,
   required this.Modelo,
   required this.CodigoFipe,
});

  



  DetailModel.fromJson(Map<String, dynamic> json) {
    TipoVeiculo = json['TipoVeiculo'];
    Valor = json['Valor'];
    Marca = json['Marca'];
    Modelo = json['Modelo'];
    CodigoFipe = json['CodigoFipe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['TipoVeiculo'] = TipoVeiculo;
    data['Valor'] = Valor;
    data['Marca'] = Marca;
    data['Modelo'] = Modelo;
    data['CodigoFipe'] = CodigoFipe;
    return data;
  }
}
