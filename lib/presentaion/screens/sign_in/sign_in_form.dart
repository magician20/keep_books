import 'package:another_flushbar/flushbar_helper.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:keep_books/application/auth/sign_in_bloc/signin_bloc.dart';
import 'package:keep_books/presentaion/screens/sign_in/widgets/entery_field_email_widget.dart';
import 'package:keep_books/presentaion/screens/sign_in/widgets/entery_field_password_widget.dart';
import 'package:keep_books/presentaion/widgets/pages_footer_widget.dart';

class SignInForm extends StatefulWidget {
  final VoidCallback onTab;

  const SignInForm({
    Key? key,
    required this.onTab,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  static final _formKey = GlobalKey<FormState>(debugLabel: "signIpForm");
  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(SignInState state) {
    final bool isForm = state.emailAddress!.isValid();
    return isForm && isPopulated && !state.isSubmitting!;
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onChangedEmail);
    _passwordController.addListener(_onChangedPassword);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (BuildContext context, state) {
        state.authFailureOrSuccessOption!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                    storageWriteFailed: (_) =>
                        'Secure Storage write data Failed',
                  ),
                ).show(context);
              },
              (_) {
                Beamer.of(context).beamToNamed('/books');
              },
            );
          },
        );
      },
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Form(
            key: _formKey,
            child: BlocBuilder<SignInBloc, SignInState>(
              builder: (BuildContext context, SignInState state) {
                return Column(
                  children: <Widget>[
                    EnterFieldEmail(_emailController),
                    EnterFieldPassword(_passwordController),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          BlocBuilder<SignInBloc, SignInState>(
            builder: (BuildContext context, SignInState state) {
              return IgnorePointer(
                ignoring: !isLoginButtonEnabled(state),
                child: Align(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          side:
                              BorderSide(color: Theme.of(context).buttonColor)),
                      primary: isLoginButtonEnabled(state)
                          ? Theme.of(context).buttonColor
                          : Theme.of(context)
                              .scaffoldBackgroundColor, //background
                      onPrimary: isLoginButtonEnabled(state)
                          ? Theme.of(context).scaffoldBackgroundColor
                          : Theme.of(context).buttonColor, //foreground
                    ),
                    onPressed: () {
                      // trigger the event to start check user info and depend on that the state will change
                      context.read<SignInBloc>().add(const SignInEvent
                          .signInWithEmailAndPasswordPressed());
                    },
                    child: state.isSubmitting!
                        ? CircularProgressIndicator(
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            color: Theme.of(context).buttonColor,
                          )
                        : const Text(
                            "Sgin In",
                            style: TextStyle(fontSize: 20.0),
                          ),
                  ),
                ),
              );
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            // height: MediaQuery.of(context).size.height /8,
            alignment: Alignment.centerLeft,
            child: PageLoginFooterLabel(onTab: widget.onTab),
          ),
          //  _divider(),
          // //we will be remove to add google AUTH
          // Container(
          //   padding: const EdgeInsets.symmetric(vertical: 10),
          //   alignment: Alignment.centerRight,
          //   child: const Text('Forgot Password ?',
          //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          // ),
        ],
      ),
    );
  }

  void _onChangedEmail() {
    context
        .read<SignInBloc>()
        .add(SignInEvent.emailChanged(_emailController.text));
  }

  void _onChangedPassword() {
    context
        .read<SignInBloc>()
        .add(SignInEvent.passwordChanged(_passwordController.text));
  }
}



  ///create widget
  // Widget _divider() {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 10),
  //     child: Row(
  //       children: const <Widget>[
  //         SizedBox(
  //           width: 15,
  //         ),
  //         Expanded(
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 10),
  //             child: Divider(
  //               thickness: 1,
  //             ),
  //           ),
  //         ),
  //         Text('or'),
  //         Expanded(
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 10),
  //             child: Divider(
  //               thickness: 1,
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 15,
  //         ),
  //       ],
  //     ),
  //   );
  // }
