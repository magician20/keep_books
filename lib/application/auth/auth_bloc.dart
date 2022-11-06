import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_books/domain/auth/entities/user.dart';
import 'package:keep_books/domain/auth/repository/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

//still not handle auth token saved
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  late final StreamSubscription<Option<User>> _userSubscription;

  AuthBloc(this._authFacade): super(
          _authFacade.currentUser.fold(
            () => AuthState.unauthenticated(),
            (user) {
              return user.isEmpty
                  ? AuthState.unauthenticated()
                  : AuthState.authenticated(user);
            },
          ),
        ) {
    on<AuthUserChanged>(_mapAppAuthUserChanged);
    on<SignedOut>(_mapLoggedOutToState);
    _userSubscription = _authFacade.getSignedInUser().listen(
          (user) => add(AuthUserChanged(user.getOrElse(() => User.empty()))),
        );
  }

  Future<void> _mapAppAuthUserChanged(
      AuthUserChanged event, Emitter<AuthState> emit) async {
    emit(
      event.user.isEmpty
          ? AuthState.unauthenticated()
          : AuthState.authenticated(event.user),
    );
  }

  void _mapLoggedOutToState(SignedOut e, Emitter<AuthState> emit) {
    //show loading before change state
    //will call logout then (unawaited used to not wait for the future to be resolve)
    unawaited(_authFacade.signOut());
    //Todo: dispose the data & release the memory if needed
    //generate unauthenticated state
    emit(AuthState.unauthenticated());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }

}
