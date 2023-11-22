// ignore_for_file: prefer_const_constructors, must_be_immutable

part of 'widgets.dart';

class ElevatedBtnIcon extends StatelessWidget {
  ElevatedBtnIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<KategoriProvider>(
      builder: (BuildContext context, kategori, child) {
        return Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 8,
          runSpacing: 10,
          children: List.generate(
            kategori.btnCount,
            (index) {
              var item = kategori.kategoriData[index];
              return ElevatedButton.icon(
                icon: Icon(item.icon),
                onPressed: () {
                  kategori.updateBtn(index);
                },
                label: Text(item.nama),
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
                    item.btnWidth,
                    item.btnHeight,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
