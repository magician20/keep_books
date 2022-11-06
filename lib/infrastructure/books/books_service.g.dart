// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _BooksService implements BooksService {
  _BooksService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://www.googleapis.com/books/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiBooksListDto> getListOfBooks(query, startIndex, maxResults) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        ApiBooksListDto>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            '/volumes?q=${query}&startIndex=${startIndex}&maxResults=${maxResults}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiBooksListDto.fromJson(_result.data!);
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
