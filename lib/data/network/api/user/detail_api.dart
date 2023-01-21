import 'package:dio/dio.dart';
import 'package:dio_blog/data/network/api/constant/endpoints.dart';
import 'package:dio_blog/data/network/dio_client.dart';

class DetailApi {
  final DioClient dioClient;

  DetailApi({required this.dioClient});

  Future<Response> addDetailApi(String name, String job) async {
    try {
      final Response response = await dioClient.post(
        Endpoints.details,
        data: {
          'name': name,
          'job': job,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getDetailsApi() async {
    try {
      final Response response = await dioClient.get("https://parallelum.com.br/fipe/api/v1/carros/marcas/59/modelos/5940/anos/2014-3");
      return  response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> updateDetailApi(int id, String name, String job) async {
    try {
      final Response response = await dioClient.put(
        Endpoints.details + '/$id',
        data: {
          'name': name,
          'job': job,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteDetailApi(int id) async {
    try {
      await dioClient.delete(Endpoints.details + '/$id');
    } catch (e) {
      rethrow;
    }
  }
}
