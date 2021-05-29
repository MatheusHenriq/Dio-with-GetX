import 'package:apiconsume/app/models/data_models.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  final Dio _dio;
  HomeRepository(this._dio);

  Future<List<DataModel>> findAllUsers() async {
    try {
      final response =
          await _dio.get<List>('https://jsonplaceholder.typicode.com/comments');
      return response.data!.map((e) => DataModel.fromJson(e)).toList();
    } on DioError catch (e) {
      if (e.response!.statusCode == 500) print('erro 500 fi');
      rethrow;
    }
  }
}
