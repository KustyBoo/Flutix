part of 'provider.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movies = [];
  List<Movie> _moviesComing = [];

  List<Movie> get movies => _movies;
  List<Movie> get moviesComing => _moviesComing;


  Future<void> fetchMoviesOnPlaying() async {
    List<Movie> movieList = await MovieService.getMovieOnPlaying(1);
    
    _movies = movieList.toList();
    notifyListeners();
  }

  Future<void> fetchMoviesComingSoon() async {
    List<Movie> movieList = await MovieService.getMovieComingSoon(1);
    
    _moviesComing = movieList.toList();
    notifyListeners();
  }
}