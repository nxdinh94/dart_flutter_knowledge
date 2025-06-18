import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  Future<dynamic> onError(DioException err, ErrorInterceptorHandler handler) async {

    if(err.response?.statusCode == 403 || err.response?.statusCode == 401){
      // handle expired access token
    }


    super.onError(err, handler);
  }
}