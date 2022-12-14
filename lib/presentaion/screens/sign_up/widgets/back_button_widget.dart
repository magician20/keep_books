import 'package:flutter/material.dart';
import 'package:keep_books/presentaion/shared/style.dart';

class BackButtonIn extends StatelessWidget {
  const BackButtonIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.of(context).maybePop();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColorLight,
                size: 24.0,
              ),
            ),
            const SizedBox(
              width: 3.0,
            ),
            Text(
              'Close',
              style: TextStyle(
                  fontSize: defaultTextCloseSize,
                  fontWeight: defaultBodyTextStyle.fontWeight,
                  color: Theme.of(context).primaryColorLight),
            ),
          ],
        ),
      ),
    );
  }
}
