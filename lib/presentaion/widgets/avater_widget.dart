import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/application/auth/auth_bloc.dart';
import 'package:keep_books/application/profile/profile_bloc.dart';
import 'package:keep_books/presentaion/widgets/basic_dialog.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        // border: Border.all(
        //   color: const Color.fromRGBO(9, 172, 206, 1),
        //   width: 1.0,
        // ),
      ),
      child: PopupMenuButton(
        //position the pop menu under the avatar image
        offset: Offset(0, size.height * 0.1),
        //create dropdown menu item list
        onSelected: (value) {
          if (value == 1) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return const BasicDialog();
                //good if change that to open page (by using auto route)  ex: home/profile
              },
            );
          }
          // navigate to login screan
          if (value == 2) {
            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signedOut());
          }
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              value: 1,
              child: Row(children: [
                Icon(Icons.person_outline_rounded,
                    color: Theme.of(context).primaryColor),
                const SizedBox(width: 4),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(children: [
                Icon(Icons.logout, color: Theme.of(context).primaryColor),
                const SizedBox(width: 4),
                Text(
                  'Logout',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
          ];
        },
        child: BlocBuilder<ProfileBloc, ProfileState>(
          //buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return ClipOval(
              child: state.profile.avatarUrl!.value.isLeft()
                  ? Image.asset(
                      'images/Icon-76.png',
                    )
                  : Image.network(
                      state.profile.avatarUrl!.getOrCrash(),
                    ),
            );
          },
        ),
      ),
    );
  }
}
