import 'package:dio_blog/data/models/user/detail_model.dart';
import 'package:dio_blog/data/models/user/user_model.dart';
import 'package:dio_blog/data/network/api/user/detail_api.dart';
import 'package:dio_blog/di/service_locator.dart';
import 'package:dio_blog/ui/home/controller.dart';
import 'package:dio_blog/ui/home/detail_page.dart';
import 'package:dio_blog/ui/home/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

import 'detail_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = getIt<HomeController>();

  






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(),
      body: FutureBuilder<List<UserModel>>(
        future: homeController.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            final error = snapshot.error;
            return Center(
              child: Text(
                "Error: " + error.toString(),
              ),
            );
          } else if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No data'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
   
                final user = snapshot.data![index];
   
  

                return ListTile(
                    
                  
                  title: Text(user.nome ?? ''),
                  subtitle: Text("${user.nome} cows" ?? ''),
          
                   onTap: () {
       
                       Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailPage();
        
    }));
                 }
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
