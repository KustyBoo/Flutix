part of 'widgets.dart';

class TitleMovie extends StatelessWidget {
  final double rate;

  final String? mainAxisAlignment;
  final String genreAndLanguage;

  const TitleMovie(
      {super.key,
      required this.genreAndLanguage,
      required this.rate,
      this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          mainAxisAlignment != null && mainAxisAlignment == 'start'
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
      mainAxisAlignment:
          mainAxisAlignment != null && mainAxisAlignment == 'start'
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
      children: [
        RatingStarts(
          averageRate: rate,
          textStyle: teksApp.bodyMedium!
              .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
          mainAxisAlignment:
              mainAxisAlignment != null && mainAxisAlignment == 'start'
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: mainAxisAlignment == 'start'
                ? MediaQuery.of(context).size.width - (2 * defaultMargin) - 90
                : double.infinity,
            child: Text(
              genreAndLanguage,
              style: teksApp.bodyMedium!.copyWith(
                fontSize: 16,
                overflow: TextOverflow.clip,
              ),
              maxLines: 3,
              textAlign: mainAxisAlignment == 'start'
                  ? TextAlign.left
                  : TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleMovieSkeleton extends StatelessWidget {
  final String? mainAxisAlignment;
  const TitleMovieSkeleton({super.key, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          mainAxisAlignment != null && mainAxisAlignment == 'start'
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
      children: const [
        ShimmerContainer(
          height: 20,
          width: 128,
        ),
        SizedBox(
          height: 6.0,
        ),
        ShimmerContainer(
          height: 14,
          width: 90,
        ),
      ],
    );
  }
}