part of 'screens.dart';

class DetailMoviePage extends StatelessWidget {
  const DetailMoviePage({super.key});

  // List<Credit> credits;

  @override
  Widget build(BuildContext context) {
    MovieDetail? movieDetail;
    List<Credit>? credits = [];

    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    int movieId = arguments['id'];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: warnaApp.primary,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          FutureBuilder(
            future: MovieService.getDetailMovie(movieId: movieId),
            builder: (_, snapshot) {
              bool hasLoadedDetail =
                  snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData;
              if (snapshot.hasData) {
                movieDetail = snapshot.data;
              }

              return ListView(
                children: [
                  Stack(
                    children: [
                      hasLoadedDetail
                          ? Stack(
                              children: [
                                //backdrop
                                Container(
                                    width: double.maxFinite,
                                    height: 270,
                                    decoration: BoxDecoration(
                                        color: warnaApp.secondary,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://image.tmdb.org/t/p/w1280/${movieDetail?.backdropPath ?? movieDetail?.posterPath}'),
                                            fit: BoxFit.cover))),
                                //Gradient
                                Container(
                                  width: double.maxFinite,
                                  height: 271,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                        Colors.white,
                                        Colors.white.withOpacity(0.0),
                                      ],
                                          begin: Alignment(0, 1),
                                          end: Alignment(0, 0.1))),
                                ),
                                //Icon Back button
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 24, top: 16),
                                  decoration:  BoxDecoration(
                                    color: warnaApp.primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : const ShimmerContainer(
                              height: 270,
                              width: double.maxFinite,
                            ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: hasLoadedDetail
                        ? TitleMovie(
                            title: movieDetail!.title,
                            genreAndLanguage: movieDetail!.genresAndLanguage,
                            rate: movieDetail!.voteAverage,
                          )
                        : const TitleMovieSkeleton(),
                  ),
                  //Credits Section
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: defaultMargin),
                    child: FutureBuilder(
                        future: MovieService.getCreditMovie(movieId: movieId),
                        builder: (_, snapshot2) {
                          bool hasLoadedCredits = snapshot2.connectionState ==
                                  ConnectionState.done &&
                              snapshot2.hasData;
                          if (snapshot2.hasData) {
                            credits = snapshot2.data;
                          }

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: defaultMargin),
                                child: titleSection('Cast & Crew'),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                height: 116,
                                child: hasLoadedCredits
                                    ? ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: credits!.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return CastCard(
                                            profilePath:
                                                credits![index].profilePath ??
                                                    null,
                                            name: credits![index].name,
                                            margin: EdgeInsets.only(
                                                right: index ==
                                                        (credits!.length - 1)
                                                    ? 0
                                                    : 13.0,
                                                left: index == 0
                                                    ? defaultMargin
                                                    : 0),
                                          );
                                        },
                                      )
                                    : ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return CastCardSkeleton(
                                            margin: EdgeInsets.only(
                                                right: index == 4 ? 0 : 13.0,
                                                left: index == 0
                                                    ? defaultMargin
                                                    : 0),
                                          );
                                        },
                                      ),
                              ),
                            ],
                          );
                        }),
                  ),
                  //Storyline Section
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleSection('Storyline'),
                        const SizedBox(
                          height: 8.0,
                        ),
                        hasLoadedDetail
                            ? Text(
                                movieDetail!.overview,
                                style: greyTextFont.copyWith(
                                  fontSize: 14,
                                ),
                              )
                            : const Column(
                                children: [
                                  ShimmerContainer(height: 60.0),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  ShimmerContainer(height: 60.0),
                                ],
                              ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 40.0),
                    height: 46.0,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: mainColor),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ordering',
                            arguments: {'movieDetail': movieDetail});
                      },
                      child: Text(
                        "Continue to Book",
                        style: whiteTextFont.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }

  Widget titleSection(title) {
    return Text(
      title,
      style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
    );
  }
}

class ShimmerContainer extends StatelessWidget {
  final double? width;
  final double height;
  final String? variant;
  final Color? baseColor;
  final BorderRadius borderRadius;

  const ShimmerContainer(
      {super.key,
        this.width = double.infinity,
        required this.height,
        this.borderRadius = BorderRadius.zero,
        this.baseColor =  const Color(0xffEAEAEA),
        this.variant = 'rectangle'});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: baseColor ?? const Color(0xffEAEAEA),
        highlightColor: Colors.white,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color:baseColor,
            shape: variant == 'circle' ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: variant == 'circle'  ? null : borderRadius
          ),
        ));
  }
}

const double defaultMargin = 24;

const Color mainColor = Color(0xFF503E9D);
const Color mainLightColor = Color(0xFFEBEFF6);
const Color accentColor = Color(0xFF2C1F63);
const Color yellowColor = Color(0xFFFBD460);
const Color greyColor = Color(0xFFADADAD);
const Color grey2Color = Color(0xFFBEBEBE);
const Color whiteColor = Color(0xFFFFFFFF);
const Color dangerColor = Color(0xFFFF5C83);
const Color successColor = Color(0xFF3E9D9D);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whiteTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle mainTextFont = GoogleFonts.raleway()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: greyColor, fontWeight: FontWeight.w500);
TextStyle yellowTextFont = GoogleFonts.raleway()
    .copyWith(color: yellowColor, fontWeight: FontWeight.w500);
TextStyle dangerTextFont = GoogleFonts.raleway()
    .copyWith(color: dangerColor, fontWeight: FontWeight.w500);

TextStyle whiteNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.white);
TextStyle blackNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.black);
TextStyle greyNumberFont = GoogleFonts.openSans().copyWith(color: greyColor);
TextStyle yellowNumberFont =
    GoogleFonts.openSans().copyWith(color: yellowColor);

class TitleMovie extends StatelessWidget {
  final String title;
  final double rate;

  final String? mainAxisAlignment;
  final String genreAndLanguage;

  const TitleMovie(
      {super.key,
      required this.title,
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
        SizedBox(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin) - 90,
          child: Text(
            title,
            style: blackTextFont.copyWith(
                fontSize:
                    mainAxisAlignment != null && mainAxisAlignment == 'start'
                        ? 16
                        : 20,
                fontWeight: FontWeight.w600),
            maxLines: 3,
            overflow: TextOverflow.clip,
            textAlign: mainAxisAlignment != null && mainAxisAlignment == 'start'
                ? TextAlign.left
                : TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Container(
          width: mainAxisAlignment == 'start'
              ? MediaQuery.of(context).size.width - (2 * defaultMargin) - 90
              : double.infinity,
          child: Text(
            genreAndLanguage,
            style: greyTextFont.copyWith(
              fontSize: 12,
              overflow: TextOverflow.clip,
            ),
            maxLines: 3,
            textAlign: mainAxisAlignment == 'start'
                ? TextAlign.left
                : TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        RatingStarts(
          averageRate: rate,
          textStyle: greyNumberFont.copyWith(
              fontSize: 12, fontWeight: FontWeight.w300),
          mainAxisAlignment:
              mainAxisAlignment != null && mainAxisAlignment == 'start'
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
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
          height: 21,
          width: 190,
        ),
        SizedBox(
          height: 6.0,
        ),
        ShimmerContainer(
          height: 14,
          width: 90,
        ),
        SizedBox(
          height: 6.0,
        ),
        ShimmerContainer(
          height: 20,
          width: 128,
        ),
      ],
    );
  }
}

class RatingStarts extends StatelessWidget {
  final double averageRate;
  final double iconSize;
  final double fontSize;
  final Color starColor;
  final TextStyle? textStyle;
  final MainAxisAlignment? mainAxisAlignment;

  const RatingStarts(
      {super.key,
      required this.averageRate,
      this.iconSize = 20.0,
      this.fontSize = 12.0,
      this.textStyle,
      this.mainAxisAlignment,
      this.starColor = yellowColor});

  @override
  Widget build(BuildContext context) {
    int n = (averageRate / 2).round();

    List<Widget> starsWidget = List.generate(
        5,
        (index) => Icon(
              Icons.star,
              size: iconSize,
              color: n > index ? starColor : grey2Color,
            ));
    starsWidget.add(const SizedBox(
      width: 3,
    ));
    starsWidget.add(Text(
      '${averageRate.round()}/10',
      style: textStyle ??
          whiteNumberFont.copyWith(
              fontSize: fontSize, fontWeight: FontWeight.w300),
    ));

    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: starsWidget.toList(),
    );
  }
}

class CastCard extends StatelessWidget {
  final EdgeInsets margin;
  final String? profilePath;
  final String name;
  const CastCard(
      {super.key,
      this.profilePath,
      required this.name,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 70,
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 80,
            decoration: BoxDecoration(
                color: profilePath != null ? greyColor : Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: profilePath != null
                        ? NetworkImage('https://image.tmdb.org/t/p//w185/$profilePath')
                        : const AssetImage('assets/user_pic.png')
                            as ImageProvider,
                    fit: profilePath != null ? BoxFit.cover : BoxFit.contain)),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: blackTextFont.copyWith(fontSize: 10),
          )
        ],
      ),
    );
  }
}

class CastCardSkeleton extends StatelessWidget {
  final EdgeInsets margin;

  const CastCardSkeleton({super.key, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 70,
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerContainer(
            height: 80.0,
            width: 70.0,
            borderRadius: BorderRadius.circular(8.0),
          ),
          const ShimmerContainer(height: 24.0)
        ],
      ),
    );
  }
}
