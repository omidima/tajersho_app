import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'models/vendor_model.dart';

part 'rest_provider.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:8000/api/vendor")
abstract class RestProvider {
  factory RestProvider(Dio dio, {String baseUrl}) = _RestProvider;

  @GET("/")
  Future<VendorModel> getVendorInformation();

  @POST("/")
  Future<VendorModel> editVendorInformation();
}
