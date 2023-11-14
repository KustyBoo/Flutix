part of 'models.dart';

class Movie extends Equatable {
  final String title;
  final double voteAverage;
  final String posterPath;
  final int id;
  final String? backdropPath;
  final String overview;

  const Movie(
      {required this.id,
      required this.title,
      required this.voteAverage,
      required this.posterPath,
      this.backdropPath = '',
      this.overview = ''});

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
      id: json['id'],
      title: json['title'],
      voteAverage: (json['vote_average'] as num).toDouble(),
      posterPath: json['poster_path'],
      overview: json['overview'],
      backdropPath: json['backdrop_path']);

  @override
  List<Object> get props => [id, title, voteAverage, posterPath, overview];
}
