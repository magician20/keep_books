part of 'book_actor_bloc.dart';

@freezed
class BookActorState with _$BookActorState {
  const factory BookActorState.initial() = _Initial;
  const factory BookActorState.actionInProgress() = _ActionInProgress;
  const factory BookActorState.statusChangeFailure(BookFailure bookFailure) = _StatusChangeFailure;
  const factory BookActorState.statusChangeSuccess() = _StatusChangeSuccess;
}