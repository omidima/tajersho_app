import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  Function(RequestOptions options, RequestInterceptorHandler handler)
      onSendRequest;
  Function(Response response, ResponseInterceptorHandler handler)
      onReceveResponse;

  AuthInterceptor(
      {required this.onReceveResponse, required this.onSendRequest});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    await onSendRequest(options, handler);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async{
    await onReceveResponse(response, handler);
    super.onResponse(response, handler);
  }
}
