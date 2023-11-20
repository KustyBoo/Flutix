part of 'screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  Future<void> _fetchMovies() async {
    try {
      await Provider.of<MovieProvider>(context, listen: false)
          .fetchMoviesComingSoon();
      await Provider.of<MovieProvider>(context, listen: false)
          .fetchMoviesOnPlaying();
    } catch (error) {
      print('Error fetching movies: $error');
    }
  }

  Widget titleSection(title) {
    return Text(
      title,
      style: teksApp.bodyMedium!
          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleSection("Now Playing"),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    child: Consumer<MovieProvider>(
                      builder: (context, movieProvider, _) {
                        if (movieProvider.movies.isNotEmpty) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: movieProvider.movies.length,
                            itemBuilder: (_, index) {
                              return MovieCardPlaying(
                                margin: EdgeInsets.only(
                                  right: 10.0,
                                ),
                                movie: movieProvider.movies[index],
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/movieDetail',
                                    arguments: {
                                      'id': movieProvider.movies[index].id
                                    },
                                  );
                                },
                              );
                            },
                          );
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: warnaApp.primaryContainer, thickness: 2),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleSection("Coming Soon"),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    child: Consumer<MovieProvider>(
                      builder: (context, movieProvider, _) {
                        if (movieProvider.moviesComing.isNotEmpty) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: movieProvider.moviesComing.length,
                            itemBuilder: (_, index) {
                              return MovieCardPlaying(
                                margin: EdgeInsets.only(
                                  right: 10.0,
                                ),
                                movie: movieProvider.moviesComing[index],
                              );
                            },
                          );
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: warnaApp.primaryContainer, thickness: 2),
          ],
        ),
      ),
    );
  }
}

class MovieCardPlaying extends StatelessWidget {
  final EdgeInsets margin;
  final Movie movie;
  final VoidCallback? onTap;
  const MovieCardPlaying(
      {super.key,
      this.margin = EdgeInsets.zero,
      required this.movie,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 200,
            width: 140,
            margin: margin,
            decoration: BoxDecoration(
              color: warnaApp.primary,
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w780/${movie.backdropPath ?? movie.posterPath}'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 140,
          child: Text(
            movie.title,
            style: teksApp.bodyMedium!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
