import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/presentaion/shared/constants.dart';
import 'package:keep_books/presentaion/widgets/entery_profile_field_widget.dart';

import '../../application/profile/profile_bloc.dart';
import '../shared/responsive.dart';

class CustomDialogBox extends StatefulWidget {
  const CustomDialogBox({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  final TextEditingController _displayNameTextController =
      TextEditingController();
  final TextEditingController _profesionTextController =
      TextEditingController();
  final TextEditingController _quoteTextController = TextEditingController();
  final TextEditingController _avatarTextController = TextEditingController();
  @override
  void initState() {
    super.initState();
    //BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.initialized());
    //  getIt<ProfileBloc>().add(const ProfileEvent.initialized());
    var name = context.read<ProfileBloc>().state.profile.name!.getOrCrash();
    _displayNameTextController.text = name; //widget.profile.name!.getOrCrash();
    _displayNameTextController.addListener(_onChangedName);
    var profession =
        context.read<ProfileBloc>().state.profile.profession!.getOrCrash();
    _profesionTextController.text =
        profession; //widget.profile.profession!.getOrCrash();
    _profesionTextController.addListener(_onChangedProfession);
    var quote = context.read<ProfileBloc>().state.profile.quote!.getOrCrash();
    _quoteTextController.text = quote; // widget.profile.quote!.getOrCrash();
    _quoteTextController.addListener(_onChangedQuote);
    var avatarUrl =
        context.read<ProfileBloc>().state.profile.avatarUrl!.getOrCrash();
    _avatarTextController.text =
        avatarUrl; // widget.profile.avatarUrl!.getOrCrash();
    _avatarTextController.addListener(_onChangedAvatar);
  }

  @override
  void dispose() {
    _displayNameTextController.removeListener(_onChangedName);
    _profesionTextController.removeListener(_onChangedProfession);
    _quoteTextController.removeListener(_onChangedQuote);
    _avatarTextController.removeListener(_onChangedAvatar);
    _displayNameTextController.dispose();
    _profesionTextController.dispose();
    _quoteTextController.dispose();
    _avatarTextController.dispose();
    super.dispose();
  }

  void _onChangedName() {
    context
        .read<ProfileBloc>()
        .add(ProfileEvent.nameTextChanged(_displayNameTextController.text));
  }

  void _onChangedProfession() {
    context
        .read<ProfileBloc>()
        .add(ProfileEvent.profesionTextChanged(_profesionTextController.text));
  }

  void _onChangedQuote() {
    context
        .read<ProfileBloc>()
        .add(ProfileEvent.quoteTextChanged(_quoteTextController.text));
  }

  void _onChangedAvatar() {
    context
        .read<ProfileBloc>()
        .add(ProfileEvent.avatarTextChanged(_avatarTextController.text));
  }

  bool isProfileButtonEnabled(ProfileState state) {
    final isValid = state.profile.failureOption;
    return isValid.isNone() && !state.isSaving;
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final Size size = MediaQuery.of(context).size;
    //  final mediaQueryData = MediaQuery.of(context);
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold((failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  insufficientPermission: (_) => 'Insufficient permissions ❌',
                  unableToUpdate: (_) => "Couldn't update the Profile.",
                  unexpected: (_) =>
                      'Unexpected error occured, please contact support.',
                  unableToGetData: (_) =>
                      'unableToGetData error occured, check your connection.',
                ),
              ).show(context);
            }, (_) {});
          },
        );
      },
      // buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: <Widget>[
            // bottom part
            Container(
              width: Responsive.isMobile(context) ? size.width * 0.7 : 400,
              height: Responsive.isMobile(context)
                  ? size.height * 0.58
                  : size.height * 0.58,
              padding: const EdgeInsets.only(
                  left: dialogPadding,
                  top: dialogAvatarRadius + dialogPadding,
                  right: dialogPadding,
                  bottom: dialogPadding),
              margin: const EdgeInsets.only(top: dialogAvatarRadius),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(dialogPadding),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(10, 10),
                        blurRadius: 10),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EnteryProfileField(
                              textController: _displayNameTextController,
                              label: "Name",
                              enabledEdit: !state.isSaving,
                              //hintText: '',
                              validator: (_) {
                                return state.profile.name!.value.fold(
                                  (f) => f.maybeMap(
                                    empty: (_) => 'Empty Name',
                                    shortUserName: (str) =>
                                        'Short User Name mini ${str.min} letter',
                                    invalidNameAlphabet: (_) =>
                                        'Invaild Name Only Alphabet',
                                    multiline: (_) => 'No Lines',
                                    orElse: () => "",
                                  ),
                                  (_) => null,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EnteryProfileField(
                              textController: _profesionTextController,
                              label: 'Profession',
                              enabledEdit: !state.isSaving,
                              //hintText: '',
                              validator: (_) {
                                return state.profile.profession!.value.fold(
                                  (f) => f.maybeMap(
                                    multiline: (_) => 'No Lines',
                                    empty: (_) => 'Empty Profession',
                                    orElse: () => "",
                                  ),
                                  (_) => null,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EnteryProfileField(
                              textController: _quoteTextController,
                              label: 'Favorite quote',
                              enabledEdit: !state.isSaving,
                              //hintText: '',
                              validator: (_) {
                                return state.profile.quote!.value.fold(
                                  (f) => f.maybeMap(
                                    multiline: (_) => 'No Lines',
                                    empty: (_) => 'Empty quote',
                                    orElse: () => "",
                                  ),
                                  (_) => null,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EnteryProfileField(
                              textController: _avatarTextController,
                              label: 'Avatar url',
                              enabledEdit: !state.isSaving,
                              //hintText: '',
                              validator: (_) {
                                return state.profile.avatarUrl!.value.fold(
                                  (f) => f.maybeMap(
                                    multiline: (_) => 'No Lines',
                                    empty: (_) => 'Empty url',
                                    orElse: () => "",
                                  ),
                                  (_) => null,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: IgnorePointer(
                            ignoring: !isProfileButtonEnabled(state),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {
                                  //save code
                                  context
                                      .read<ProfileBloc>()
                                      .add(const ProfileEvent.saved());
                                  //if i want to close dialog after update (i have to fix the problem of pop up when data have error)
                                  if (!state.saveFailureOrSuccessOption.isSome()) {
                                    Timer(const Duration(seconds: 1), () {
                                     Navigator.of(context).pop();
                                    });
                                  }
                                },
                                child: state.isSaving
                                    ? const SizedBox(
                                        child: CircularProgressIndicator(
                                          backgroundColor: Colors
                                              .orange, //Theme.of(context).colorScheme.primary
                                        ),
                                      )
                                    : const Text('Update'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                // //maybe can remove this event call if our data object
                                context
                                    .read<ProfileBloc>()
                                    .add(const ProfileEvent.initialized());
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // top part
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 50,
                backgroundImage: const AssetImage(
                  'images/Icon-76.png',
                ),
                //below code not good despite try many solution that one only worked
                foregroundImage: NetworkImage(
                  state.profile.avatarUrl!.isValid()
                      ? state.profile.avatarUrl!.getOrCrash()
                      : "",
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
