// ignore_for_file: prefer_const_constructors, must_be_immutable

part of 'widgets.dart';

class TopUpBtn extends StatelessWidget {
  TopUpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TopUpProvider>(
      builder: (BuildContext context, topup, child) {
        return Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 8,
          runSpacing: 10,
          children: List.generate(
            topup.btnCount,
            (index) {
              var item = topup.nominalData[index];
              return ElevatedButton(
                onPressed: () {
                  topup.updateBtn(index);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: item.bgColor,
                  foregroundColor: item.foreColor,
                  padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                  elevation: 0,
                  side: BorderSide(
                    width: 1,
                    color: item.foreColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700,
                    color: item.foreColor,
                  ),
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.45,
                    42,
                  ),
                ),
                child: Text(item.jumlah),
              );
            },
          ),
        );
      },
    );
  }
}
