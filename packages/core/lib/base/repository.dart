import 'package:core/base/base_provider.dart';
import 'package:core/database_key.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:utils/network/auth_interceptor.dart';

abstract class Repository<Provider> {
  late Dio dio;
  late Provider restProvider;
  late BaseProvider baseProvider;
  late Box configDb;

  Repository() {
    Hive.openBox(DatabaseName.config).then((value) {
      configDb = value;
    });

    dio = Dio()
      ..interceptors.addAll([
        AuthInterceptor(onReceveResponse: (response, handler) async {
          if (response.statusCode == 401) {
            onNeedRefreshToken();
          }
        }, onSendRequest: (request, handler) async {
          request.headers['Authorization'] =
              await configDb.get(ConfigDbItems.accessToken);
        })
      ]);
  }

  void onNeedRefreshToken() async {
    try {
      var item = await baseProvider
          .refreshToken(configDb.get(ConfigDbItems.refreshToken));
      await configDb.put(ConfigDbItems.accessToken, item.access);
    } catch (e) {}
  }


}
