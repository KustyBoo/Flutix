// ignore_for_file: prefer_const_constructors, must_be_immutable

part of 'widgets.dart';

class ElevatedBtnIcon extends StatelessWidget {
  ElevatedBtnIcon(
      {super.key,
      required this.iconCustom,
      required this.teksCustom,
      required this.btnClicked,
      required this.lebarBtn,
      required this.tinggiBtn,
      this.fungsiCustom});

  final IconData iconCustom;
  final String teksCustom;
  final Function()? fungsiCustom;

  double lebarBtn;
  double tinggiBtn;

  bool btnClicked;

  Color warnaBackground = warnaApp.primary;
  Color warnaForeground = warnaApp.secondary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(iconCustom),
      onPressed: fungsiCustom,
      label: Text(teksCustom),
      style: ElevatedButton.styleFrom(
        backgroundColor: btnClicked == false
            ? warnaBackground
            : warnaForeground,
        foregroundColor: btnClicked == false
            ? warnaForeground
            : warnaBackground,
        padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
        elevation: 0,
        side: BorderSide(
          width: 1,
          color: warnaApp.secondary,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontFamily: "Raleway",
          fontWeight: FontWeight.w700,
        ),
        minimumSize: Size(lebarBtn, tinggiBtn),
      ),
    );
  }
}
