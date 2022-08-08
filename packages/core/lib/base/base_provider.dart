import 'package:core/models/file_model.dart';
import 'package:core/models/response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/login_response.dart';

part 'base_provider.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:8000/")
abstract class BaseProvider {
  factory BaseProvider(Dio dio, {String baseUrl}) = _BaseProvider;

  @GET("api/token/refresh/")
  Future<LoginResponse> refreshToken(
    @Query("refresh") String refreshToken,
  );

  @GET("login")
  Future<LoginResponse> loginUser(
    @Query("username") String username,
    @Query("password") String password,
  );

  @POST("signup/")
  Future<LoginResponse> signupUser(
    @Query("username") String username,
    @Query("password") String password,
    @Query("email") String email,
    @Query("phone_number") String? phone_number,
  );

  @GET("api/files")
  Future<ResponseModel<FileModel>> getFiles();

  @GET("api/files/{uid}")
  Future<FileModel> getFileInfo(
    @Path("uid") String uid
  );

}
