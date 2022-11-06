part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
   const factory ProfileState({
    required Profile profile,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        profile: Profile.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
