import 'package:flutter/material.dart';
import '../../../data/models/user/user_model.dart';
import '../../../data/models/user/detail_model.dart';
import '../../constants.dart';


class DetailScreen2 extends StatelessWidget {

  final DetailModel carro ;



  const DetailScreen2({Key? key, required this.carro }) : super(key: key);
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(carro.Modelo! ?? 'DATA' ),
         backgroundColor: Color(0xff885566),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Titulo de la noticía : ${carro.Marca}', style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Contenido de la carro: ${carro.CodigoFipe}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Autor: ${carro.TipoVeiculo}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Hora de publicación: ${carro.Valor}', style: subjectTextStyle),
              const Divider(color: primaryColor),
       
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(239, 32, 70, 159), // background
                onPrimary: Color.fromARGB(255, 23, 1, 1), // foreground
              ),
              onPressed: () { 
                Navigator.pop(context);
              },
              child: Text('Done'),
)
            ],
            
          ),
          
        ))
        ;
    }
}
