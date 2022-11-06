part of 'book_add_bloc.dart';

@freezed
class BookAddEvent with _$BookAddEvent {
  const factory BookAddEvent.add(Book book) = _Add;
}