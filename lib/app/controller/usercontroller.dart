import 'package:apiconsume/app/repository/usercomments_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController with StateMixin {
  final UserRepository _userRepository;
  UserController(this._userRepository);
  RxInt userValue = 2.obs;
  List<int> userIds = [];
  @override
  void onInit() {
    super.onInit();
    findUserComments();
  }

  Future<void> findUserComments() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _userRepository.findUserComments();
      for (int i = 0; i < dados.length; i++) {
        userIds.insert(i, dados[i].id);
      }
      print(userIds);
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}
