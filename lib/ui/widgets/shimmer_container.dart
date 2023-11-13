part of 'widgets.dart';

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
      this.baseColor = const Color(0xffEAEAEA),
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
              color: baseColor,
              shape: variant == 'circle' ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: variant == 'circle' ? null : borderRadius),
        ));
  }
}