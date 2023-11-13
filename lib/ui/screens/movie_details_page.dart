part of 'screens.dart';

class DetailMoviePage extends StatelessWidget {
  const DetailMoviePage({super.key});

  // List<Credit> credits;

  @override
  Widget build(BuildContext context) {
    MovieDetail? movieDetail;
    List<Credit>? credits = [];

    // Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    int movieId = 120;

    return Scaffold(
      body: Stack(
        children: [
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
                              clipBehavior: Clip.none,
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
                                //Icon Back button
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 24, top: 16),
                                  decoration: BoxDecoration(
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
                                Positioned.fill(
                                  bottom: -30,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: warnaApp.primary,
                                        boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 0.1, blurRadius:5,),]
                                      ),
                                      width: 260,
                                      child: Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: 
                                              Text(
                                                  movieDetail!.title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(fontSize: 24)
                                                )
                                              
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const ShimmerContainer(
                                  height: 270,
                                  width: double.maxFinite,
                                ),
                                Positioned.fill(
                                  bottom: -30,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: warnaApp.primary,
                                        boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 0.1, blurRadius:5,),]
                                      ),
                                      width: 250,
                                      child: Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: ShimmerContainer(
                                            height: 30,
                                            width: 200,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 10),
                    child: hasLoadedDetail
                        ? TitleMovie(
                            genreAndLanguage: movieDetail!.genresAndLanguage,
                            rate: movieDetail!.voteAverage,
                          )
                        : const TitleMovieSkeleton(),
                  ),
                  Divider(
                    color: warnaApp.primaryContainer,
                    thickness: 2
                  ),

                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleSection('Description'),
                        const SizedBox(
                          height: 8.0,
                        ),
                        hasLoadedDetail
                            ? Text(
                                movieDetail!.overview,
                                style: teksApp.bodyMedium!.copyWith(
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

                  Divider(
                    color: warnaApp.primaryContainer,
                    thickness: 2
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
                                child: titleSection('Cast'),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                height: 175,
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
                    height: 46.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: warnaApp.secondary),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ordering',
                            arguments: {'movieDetail': movieDetail});
                      },
                      child: Text(
                        "Continue to Book",
                        style: TextStyle(
                          color: warnaApp.primary,
                          fontFamily: "raleway",
                          fontSize: 16
                        ),
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
      style: teksApp.bodyMedium!
          .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}

const double defaultMargin = 24;
