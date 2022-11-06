import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../core/constants.dart';
import 'api_books_list_dto.dart';

part 'books_service.g.dart';

@singleton
@RestApi(baseUrl: API_GOOGLE_BOOKS_BASE_URL)
abstract class BooksService {
  @factoryMethod
  factory BooksService(Dio dio) = _BooksService;

  @GET("/volumes?q={query}&startIndex={startIndex}&maxResults={maxResults}")
  Future<ApiBooksListDto> getListOfBooks(
      @Path("query") String query,
      @Path("startIndex") int? startIndex,
      @Path("maxResults") int? maxResults);
}
