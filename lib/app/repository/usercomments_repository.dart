import 'package:apiconsume/app/models/usercomments_models.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final Dio _dio;
  UserRepository(this._dio);
  Future<List<UserCommentsModel>> findUserComments() async {
    try {
      final response = await _dio
          .get<List>('https://jsonplaceholder.typicode.com/posts/1/comments');
      return response.data!.map((e) => UserCommentsModel.fromJson(e)).toList();
    } on DioError catch (e) {
      print(e);
      rethrow;
    }
  }
}
