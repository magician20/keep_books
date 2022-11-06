part of 'book_actor_bloc.dart';

@freezed
class BookActorEvent with _$BookActorEvent {
   //const factory BookActorEvent.deleted(Note note) = _Deleted;
   const factory BookActorEvent.statusChanged(Book book) = _StatusChanged;


}