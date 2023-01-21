// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.AnoModelo,
    required this.TipoVeiculo,
    required this.Marca,
    required this.Valor,
    required this.Modelo,
    required this.MesReferencia,
    this.body,
  });

  int AnoModelo;
  int TipoVeiculo;
  String Marca;
  String Valor;
  String Modelo;
  String MesReferencia;
  String? body;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        AnoModelo: json["AnoModelo"],
        TipoVeiculo: json["TipoVeiculo"],
        Marca: json["Marca"],
        Valor: json["Valor"],
        Modelo: json["Modelo"],
        MesReferencia: json["MesReferencia"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "AnoModelo": AnoModelo,
        "TipoVeiculo": TipoVeiculo,
        "Marca": Marca,
        "Valor": Valor,
        "Modelo": Modelo,
        "MesReferencia": MesReferencia,
        "body": body,
      };
}
