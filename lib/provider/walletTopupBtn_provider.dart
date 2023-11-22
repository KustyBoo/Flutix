part of 'provider.dart';

class Nominal {
  int id;
  String jumlah;
  Color bgColor;
  Color foreColor;

  Nominal(
      {required this.id,
      required this.jumlah,
      required this.bgColor,
      required this.foreColor});
}

class TopUpProvider extends ChangeNotifier {
  int counterClicked = 0;
  TextEditingController jumlahTopup = TextEditingController();

  final List<Nominal> nominalData = [
    Nominal(
      id: 1,
      jumlah: "Rp50.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 2,
      jumlah: "Rp100.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 3,
      jumlah: "Rp150.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 4,
      jumlah: "Rp200.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 5,
      jumlah: "Rp250.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 6,
      jumlah: "Rp300.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 7,
      jumlah: "Rp350.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 8,
      jumlah: "Rp400.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 9,
      jumlah: "Rp450.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
    Nominal(
      id: 10,
      jumlah: "Rp500.000",
      bgColor: warnaApp.primary,
      foreColor: warnaApp.secondary,
    ),
  ];

  final List<int> nominalClicked = [];

  int get btnCount {
    return nominalData.length;
  }

  TextEditingController getControllerTeks(controllerTeks) {
    return controllerTeks = jumlahTopup;
  }

  void updateBtn(int index) {
    if (nominalClicked.contains(index) == false) {
      for (int i = 0; i < nominalData.length; i++) {
        if (nominalData[i].bgColor == warnaApp.secondary) {
          nominalData[i].bgColor = warnaApp.primary;
          nominalData[i].foreColor = warnaApp.secondary;
          nominalClicked.removeLast();
        }
      }
      nominalData[index].bgColor = warnaApp.secondary;
      nominalData[index].foreColor = warnaApp.primary;
      jumlahTopup.text = nominalData[index].jumlah;
      nominalClicked.add(index);
    } else if (nominalClicked.contains(index) == true) {
      nominalData[index].bgColor = warnaApp.primary;
      nominalData[index].foreColor = warnaApp.secondary;
      jumlahTopup.text = "IDR";
      nominalClicked.remove(index);
    }
    notifyListeners();
  }
}
