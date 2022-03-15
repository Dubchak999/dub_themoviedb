import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewMovieView extends StatelessWidget {
  const NewMovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Movie',
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline3,
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return _MovieWidget(
                      index: index,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class _MovieWidget extends StatelessWidget {
  const _MovieWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${index + 1}'.padLeft(2, '0'),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Text(
            'Movie name',
            maxLines: 2,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 300,
            child: Stack(children: [
              const Placeholder(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                          itemPadding: const EdgeInsets.only(bottom: 3),
                          itemSize: 20,
                          initialRating: 3.5,
                          allowHalfRating: true,
                          itemBuilder: (context, _) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                            );
                          },
                          onRatingUpdate: (rating) {
                            print(rating);
                          }),
                      const Text(
                        'Rate',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const AutoSizeText(
                    'Description Description Description Description Description Description Description Description ',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Genre',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
