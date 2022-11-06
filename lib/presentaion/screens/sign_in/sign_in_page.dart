import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/application/auth/sign_in_bloc/signin_bloc.dart';
import 'package:keep_books/application/auth/sign_up_bloc/signup_bloc.dart';
import 'package:keep_books/injection.dart';
import 'package:keep_books/presentaion/screens/sign_in/widgets/card_form.dart';
import 'package:keep_books/presentaion/shared/responsive.dart';


class SignInPage extends StatelessWidget {
  ///To change card ui
  final int? cardIndex;
  const SignInPage({Key? key, this.cardIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Responsive.moreThanTablet(context) ||
                mediaQueryData.orientation == Orientation.landscape
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: _size.height * 0.5,
                      width: _size.width * 0.8,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/clipboard.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    // Hero(
                    //   tag: 'Clipboard',
                    //   child: Image.asset('assets/images/clipboard.png'),
                    // ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: MultiBlocProvider(
                      providers: [
                        BlocProvider<SignInBloc>(
                          create: (context) => getIt<SignInBloc>(),
                        ),
                        BlocProvider<SignUpBloc>(
                          create: (context) => getIt<SignUpBloc>(),
                        )
                      ],
                      child: CardForm(cardIndex: cardIndex),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 5,
                    child: Container(
                      height: _size.height * 0.5,
                      width: _size.width * 0.7,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/clipboard.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    //   Hero(
                    //     tag: 'Clipboard',
                    //     child: Image.asset('assets/images/clipboard.png'),
                    //   ),
                  ),
                  Flexible(
                    flex: 12,
                    fit: FlexFit.loose,
                    child: MultiBlocProvider(
                      providers: [
                        BlocProvider<SignInBloc>(
                          create: (context) => getIt<SignInBloc>(),
                        ),
                        BlocProvider<SignUpBloc>(
                          create: (context) => getIt<SignUpBloc>(),
                        )
                      ],
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: CardForm(),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

}
