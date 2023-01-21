class UserModel {
  int? codigo;
  String? nome;

  // //  let nome, content: String
  //   let date: DateEnum
  //   // let codigo: String
  //   let imageURL: String
  //   let readMoreURL: String?
  //   let time, title: String
  //   let url: String

  UserModel({this.codigo, this.nome});

  UserModel.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['codigo'] = codigo;
    data['nome'] = nome;
    return data;
  }
}
