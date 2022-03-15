import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:themoviedb/constants/string_constants.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints.expand(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            top: 16,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.comingSoon,
                style: Theme.of(context).textTheme.headline4,
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      return const _ComingSoonItemWidget();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ComingSoonItemWidget extends StatelessWidget {
  const _ComingSoonItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(child: Placeholder()),
            SizedBox(
              height: 50,
              child: AutoSizeText(
                'Avengers ',
                maxLines: 2,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Text('Genre', style: Theme.of(context).textTheme.subtitle2),
          ],
        ),
      ),
    );
  }
}
