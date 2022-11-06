import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/presentaion/widgets/avater_widget.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../routes/router.gr.dart';
import '../../shared/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //fetchData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        toolbarHeight: 77,
        centerTitle: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/Icon-76.png',
              //scale: 2,
              // fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              'A.Reader',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.redAccent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  //work for  mobile  & Web
                  //clear the stack and push to page (worked for web)
                  AutoRouter.of(context).popUntilRoot();
                  AutoRouter.of(context).replaceAll([const SignInRoute()]);
                  // AutoRouter.of(context).popUntilRouteWithName(SignInRoute.name);
                },
               // loadingOut: (_){},
                orElse: () {},
              );
            },
            child: const AvatarWidget(),//start
          ), //fex size
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, left: 12, bottom: 10),
              width: double.infinity,
              child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: const [
                    TextSpan(text: 'Your reading\n activity '),
                    TextSpan(
                        text: 'right now...',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
            ),
            const SizedBox(
              height: 10,
            ),
            // check ConnectionState.waiting  if true return CircularProgressIndicator
            //else draw this  widget but get data (userBookFilteredReadListStream / userBooksReadList)
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Reading List',
                          style: TextStyle(
                              color: kBlackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold))
                    ])),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // check ConnectionState.waiting  if true return CircularProgressIndicator
            //else draw this  widget but get data (readingListListBook )
          ],
        ),
      ),
    );
  }

  // fetchData() async {
  //   var user = await getIt<IProfileRepository>().getProfileData();
  //   user.fold((l) => print(l.toString()),
  //       (r) => print(r.profile!.name!.getOrCrash())); // no data show
  // }
}
