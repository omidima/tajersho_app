// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _BaseProvider implements BaseProvider {
  _BaseProvider(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://127.0.0.1:8000/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LoginResponse> refreshToken(refreshToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'refresh': refreshToken};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/token/refresh/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginResponse> loginUser(username, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginResponse> signupUser(
      username, password, email, phone_number) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password,
      r'email': email,
      r'phone_number': phone_number
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'signup/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResponseModel<FileModel>> getFiles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseModel<FileModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/files',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseModel<FileModel>.fromJson(
      _result.data!,
      (json) => FileModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<FileModel> getFileInfo(uid) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FileModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/files/${uid}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FileModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
