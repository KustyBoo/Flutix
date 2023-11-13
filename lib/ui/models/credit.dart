part of 'models.dart';

class Credit extends Equatable {
  final String? profilePath;
  final String name;
  const Credit({this.profilePath, required this.name});

  @override
  List<Object> get props => [name];
}
