import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/books/book_actor/book_actor_bloc.dart';
import '../../domain/book/entities/book.dart';
import '../../injection.dart';
import '../shared/constants.dart';
import 'book_rating.dart';
import 'two_sided_roundbutton.dart';

class ReadingListCard extends StatefulWidget {
  final Book book;
  final Function? pressDetails;

  const ReadingListCard({
    Key? key,
    required this.book,
    this.pressDetails,
  }) : super(key: key);

  @override
  State<ReadingListCard> createState() => _ReadingListCardState();
}

class _ReadingListCardState extends State<ReadingListCard> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookActorBloc>(
         create: (_) => getIt<BookActorBloc>(),
      child: Container(
        margin: const EdgeInsets.only(left: 24, bottom: 0),
        width: 202,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 244,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 33,
                            color: kShadowColor)
                      ]),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                widget.book.photoUrl.getOrCrash(),
                width: 100,
              ),
            ),
            Positioned(
                top: 34,
                right: 10,
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    BookRating(score: (widget.book.rating))
                  ],
                )),
            Positioned(
              top: 160,
              child: SizedBox(
                height: 85,
                width: 202,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, left: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: const TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                                text: '${widget.book.title.getOrCrash()}\n',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: widget.book.author.getOrCrash(),
                                style:
                                    const TextStyle(color: kLightBlackColor)),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text('Details'),
                        ),
                        Expanded(
                          child: BlocBuilder<BookActorBloc, BookActorState>(
                            builder: (context, state) {
                              return TwoSidedRoundeButton(
                                  widget: state.maybeMap(
                                    actionInProgress: (_) => const Center(
                                      child: SizedBox(
                                        height: 15.0,
                                        child: CircularProgressIndicator(
                                            strokeWidth: 1.0),
                                      ),
                                    ),
                                    orElse: () => Text(
                                        widget.book.status.getOrCrash(),
                                        style: const TextStyle(color: Colors.white)),
                                  ),
                                  press: () {
                                    context.read<BookActorBloc>().add(
                                        BookActorEvent.statusChanged(widget.book));
                                  },
                                  color: kLightPurple);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
