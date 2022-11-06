import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'package:keep_books/domain/auth/entities/profile.dart';
import 'package:keep_books/domain/auth/validate/value_objects.dart';
import 'package:keep_books/domain/profile/i_profile_repository.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/profile/profile_failure.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

// ignore: constant_identifier_names
const DEFAULT_INPUTLOGIN_DEBOUNCE = 200;

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;

//problem that initial will be trigger every time i need to not use it except if no data comming
  ProfileBloc(this._profileRepository) : super(ProfileState.initial()) {//also idk if is correct to get data from repository and give it to the inital insted of dummie data
    on<_Initialized>(_mapInitializedToState);
    on<_NameTextChanged>(_mapNameTextChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<_ProfesionTextChanged>(_mapProfesionTextChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<_QuoteTextChanged>(_mapQuoteTextChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<_AvatarTextChanged>(_mapAvatarTextChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<_Saved>(_mapSavedProfileToState);
  }

  EventTransformer<Event> debounceTransformer<Event>(Duration duration) {
    return (events, mapper) {
      return events.debounceTime(duration).switchMap(mapper);
    };
  }

//*********************Implemention for generate States from events*************/

  FutureOr<void> _mapInitializedToState(
      _Initialized e, Emitter<ProfileState> emit) async {
        //code here will be need to update when we fatch data we got a user that have profile that can change but not frequently but if there's 
        //data depend on it then it will need to observe the change
    var profileData = await _profileRepository.getProfileData();
    profileData.fold(
      //idk if this good way cause i shouldn't get error if user loged in data must comming from repository or local storage
      (l) => emit(
        state.copyWith(
          showErrorMessages: true,
          profile: ProfileState.initial().profile,
          isEditing: false,
        ),
      ),
      (r) => emit(
        state.copyWith(
          profile: r.profile!,
          isEditing: false,
        ),
      ),
    );
  }

  FutureOr<void> _mapNameTextChangedToState(
      _NameTextChanged e, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      profile: state.profile.copyWith(name: Name(e.nameStr)),
      isEditing: true,
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _mapProfesionTextChangedToState(
      _ProfesionTextChanged e, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      profile: state.profile
          .copyWith(profession: StringSingleLineNotEmpty(e.profesionStr)),
      isEditing: true,
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _mapQuoteTextChangedToState(
      _QuoteTextChanged e, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      profile:
          state.profile.copyWith(quote: StringSingleLineNotEmpty(e.quoteStr)),
      isEditing: true,
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _mapAvatarTextChangedToState(
      _AvatarTextChanged e, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      profile: state.profile
          .copyWith(avatarUrl: StringSingleLineNotEmpty(e.avatarStr)),
      isEditing: true,
      saveFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _mapSavedProfileToState(
      _Saved e, Emitter<ProfileState> emit) async {
    //i feel like that must be initalized cause if condation for any reason not None mean i will be null
    Either<ProfileFailure, Unit>? failureOrSuccess;
    //save state generated >> show loading screen until data comming
    emit(
      state.copyWith(
        isSaving: true,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      ),
    );
    //when i make unvalid entry it send false but idk why last emit not trigger the lisener to sen errors?
    //so the problem is that dialog close despite there's an error not handle yet (so maybe problem inside ui code or block event and sate)
    if (state.profile.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _profileRepository.updateProfileData(state.profile)
          : await _profileRepository.createProfileData(state.profile);
    }
    //print(state.profile.failureOption.isNone());//test worked
    emit(
      state.copyWith(
        isSaving: false,
        isEditing: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
