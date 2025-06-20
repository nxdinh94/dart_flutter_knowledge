import 'package:dio/dio.dart';

class DataState<T> {

  const DataState({this.data, this.exception});
  final T? data;
  final DioException? exception;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataError<T> extends DataState<T> {
  const DataError(DioException exception) : super(exception: exception);
}
