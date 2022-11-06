part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initialized() =_Initialized;
  const factory ProfileEvent.nameTextChanged(String nameStr) = _NameTextChanged;
  const factory ProfileEvent.profesionTextChanged(String profesionStr) =
      _ProfesionTextChanged;
  const factory ProfileEvent.quoteTextChanged(String quoteStr) =
      _QuoteTextChanged;
  const factory ProfileEvent.avatarTextChanged(String avatarStr) =
      _AvatarTextChanged;
  const factory ProfileEvent.saved() = _Saved;
}
