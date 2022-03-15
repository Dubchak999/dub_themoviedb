import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:themoviedb/constants/string_constants.dart';

class NewMovieView extends StatelessWidget {
  const NewMovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.newMovie,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline3,
            ),
            const Divider(),
            const _NewMovieListView(),
          ],
        ),
      ),
    );
  }
}

class _NewMovieListView extends StatelessWidget {
  const _NewMovieListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return _NewMovieItemWidget(
              index: index,
            );
          }),
    );
  }
}

class _NewMovieItemWidget extends StatelessWidget {
  const _NewMovieItemWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Expanded(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${index + 1}'.padLeft(2, '0'),
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 50,
                child: AutoSizeText('Movie   iiofan  sdn ins  sdmf  ',
                    maxLines: 2, style: Theme.of(context).textTheme.headline5),
              ),
              Expanded(
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
                              onRatingUpdate: (rating) {}),
                          Text(
                            'Rate',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      AutoSizeText(
                          'Description Description Description Description Description Description Description Description ',
                          maxLines: 2,
                          style: Theme.of(context).textTheme.headline5),
                      Text('Genre',
                          style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
