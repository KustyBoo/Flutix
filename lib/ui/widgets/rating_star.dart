part of 'widgets.dart';

class RatingStarts extends StatelessWidget {
  final double averageRate;
  final double iconSize;
  final double fontSize;
  final Color? starColor = warnaApp.secondary;
  final TextStyle? textStyle;
  final MainAxisAlignment? mainAxisAlignment;

  RatingStarts({
    super.key,
    required this.averageRate,
    this.iconSize = 30.0,
    this.fontSize = 22.0,
    this.textStyle,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    int n = (averageRate / 2).round();

    List<Widget> starsWidget = List.generate(
        5,
        (index) => Icon(
              Icons.star,
              size: iconSize,
              color: n > index ? starColor : warnaApp.surface,
            ));
    starsWidget.add(const SizedBox(
      width: 3,
    ));

    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: starsWidget.toList(),
    );
  }
}