
import 'dart:convert';

List<DetailModel> DetailModelFromJson(String str) => List<DetailModel>.from(json.decode(str).map((x) => DetailModel.fromJson(x)));

String DetailModelToJson(List<DetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DetailModel {
    DetailModel({
        required this.TipoVeiculo,
        required this.Valor,
        required this.Marca,
        required this.Modelo,
        required this.CodigoFipe,
    });

    int TipoVeiculo;
    String Valor;
    String Marca;
    String Modelo;
    String CodigoFipe;


  // //  let Valor, content: String
  //   let date: DateEnum
  //   // let TipoVeiculo: String
  //   let imageURL: String
  //   let readMoreURL: String?
  //   let time, title: String
  //   let url: String


 
  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
        TipoVeiculo: json["TipoVeiculo"],
        Valor: json["Valor"],
        Marca: json["Marca"],
        Modelo: json["Modelo"],
        CodigoFipe: json["CodigoFipe"],
    );



       Map<String, dynamic> toJson() => {
        "TipoVeiculo": TipoVeiculo,
        "Valor": Valor,
        "Marca": Marca,
        "Modelo": Modelo,
        "CodigoFipe": CodigoFipe,
    };
  }

