part of 'book_add_bloc.dart';

@freezed
class BookAddState with _$BookAddState {
  const factory BookAddState.initial() = _Initial;
  const factory BookAddState.addInProgress() = _AddInProgress;
  const factory BookAddState.addSuccess() = _AddSuccess;
  const factory BookAddState.addFailure(BookFailure bookFailure) = _AddFailure;
}
