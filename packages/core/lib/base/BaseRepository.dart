import 'package:core/base/base_provider.dart';
import 'package:core/base/repository.dart';
import 'package:core/database_key.dart';
import 'package:core/models/login_response.dart';
import 'package:utils/network/api_wrapper.dart';
import 'package:utils/network/network_exceptions.dart';

class BaseRepository extends Repository<BaseProvider> {
  BaseRepository._internall() {
    restProvider = BaseProvider(dio);
  }

  static final BaseRepository _instance = BaseRepository._internall();
  static get getInstance => _instance;

  Future<ApiWrapper<LoginResponse>> login(
      String username, String password) async {
    try {
      var result = await restProvider.loginUser(username, password);
      configDb.put(ConfigDbItems.accessToken, result.access);
      configDb.put(ConfigDbItems.refreshToken, result.refresh);
      return ApiWrapper.success(data: result);
    } catch (e) {
      return ApiWrapper.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  signup(String username, String password, String email,
      String? phoneNumber) async {
    try {
      return ApiWrapper.success(
          data: await restProvider.signupUser(
              username, password, email, phoneNumber));
    } catch (e) {
      return ApiWrapper.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
