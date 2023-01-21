import 'package:dio/dio.dart';
import 'package:dio_blog/data/models/user/new_user_model.dart';
import 'package:dio_blog/data/models/user/user_model.dart';
import 'package:dio_blog/data/models/user/detail_model.dart';
import 'package:dio_blog/data/network/api/user/user_api.dart';
import 'package:dio_blog/data/network/api/user/detail_api.dart';
import 'package:dio_blog/data/network/dio_exception.dart';

class UserRepository {
  final UserApi userApi;
  final DetailApi detailApi;

  UserRepository(this.userApi, this.detailApi);
 

  Future<List<UserModel>> getUsersRequested() async {
    try {
      final response = await userApi.getUsersApi();
      final users = (response.data['modelos'] as List)
          .map((e) => UserModel.fromJson(e))
          .toList();
      return users;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
  Future<List<DetailModel>> getDetailsRequested() async {
    try {
      final response = await detailApi.getDetailsApi();
      return (response.data  as List).map((x) => DetailModel.fromJson(x)).toList();
   
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<NewUser> addNewUserRequested(String name, String job) async {
    try {
      final response = await userApi.addUserApi(name, job);
      return NewUser.fromJson(response.data);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<NewUser> updateUserRequested(int id, String name, String job) async {
    try {
      final response = await userApi.updateUserApi(id, name, job);
      return NewUser.fromJson(response.data);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<void> deleteNewUserRequested(int id) async {
    try {
      await userApi.deleteUserApi(id);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
