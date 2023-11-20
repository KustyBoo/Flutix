part of 'widgets.dart';

class SelectableBox extends StatelessWidget {
  final double height;
  final double width;
  final bool isSelected;
  final String? label;
  final Widget? child;
  final VoidCallback? onTap;
  final Color activeColor  = warnaApp.secondary;
  final EdgeInsets margin;
  final bool isDisabled;
  final bool isNumeric;

   SelectableBox(
      {super.key,
      this.margin = EdgeInsets.zero,
      this.isDisabled = false,
      this.isNumeric = false,
      required this.height,
      required this.width,
      required this.isSelected,
      this.child,
      this.label,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    var textFont = teksApp.bodySmall!;
    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
            color: isSelected
                ? activeColor
                : (isDisabled ? warnaApp.onPrimary : warnaApp.primaryContainer)),
        child: Center(
          child: child ??
              Text(label ?? '',
                  textAlign: TextAlign.center,
                  style: textFont
                  ),
        ),
      ),
    );
  }
}
