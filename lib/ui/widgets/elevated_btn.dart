// ignore_for_file: prefer_const_constructors, must_be_immutable

part of 'widgets.dart';

class ElevatedBtn extends StatelessWidget {
  ElevatedBtn(
      {super.key,
      required this.teksCustom,
      required this.btnClicked,
      this.fungsiCustom});

  final String teksCustom;
  final Function()? fungsiCustom;

  bool btnClicked;

  Color warnaBackground = warnaApp.primary;
  Color warnaForeground = warnaApp.secondary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fungsiCustom,
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
          child: Text(teksCustom),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor:
            btnClicked == false ? warnaBackground : warnaForeground,
        foregroundColor:
            btnClicked == false ? warnaForeground : warnaBackground,
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
      ),
    );
  }
}
