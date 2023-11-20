part of 'screens.dart';

class SelectSeatPage extends StatefulWidget {
  // final Ticket ticket
  const SelectSeatPage({super.key});

  @override
  State<SelectSeatPage> createState() => _SelectSeatPageState();
}

class _SelectSeatPageState extends State<SelectSeatPage> {
  late List<String> selectedSeats = [];

  void handleChangeSeat(seat) {
    int hasSelected = selectedSeats.indexOf(seat);
    setState(() {
      if (hasSelected > -1) {
        selectedSeats.remove(seat);
      } else {
        selectedSeats.add(seat);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      seatsAvailableIndikator('Available'),
                      seatsAvailableIndikator('Not Available'),
                      seatsAvailableIndikator('Your Seat'),
                    ],
                  ),
                ),
                Divider(
                  height: 50,
                  thickness: 3,
                  color: warnaApp.secondary,
                ),
                generateSeats(),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedBtn(
              fungsiCustom: () {},
              teksCustom: "Check-Out",
            )
          ],
        ),
      ),
    );
  }

  Widget generateSeats() {
    List<Widget> widgets = [];
    List<int> numberofSeats = [6, 6, 6, 6, 6, 6, 6, 6];

    for (int i = 0; i < numberofSeats.length; i++) {
      widgets.add(
        Material(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                numberofSeats[i],
                (j) => (SelectableBox(
                      height: 60.0,
                      width: 55.0,
                      margin: EdgeInsets.only(
                          right: j + 1 == 3
                              ? 50
                              : j + 1 == 6
                                  ? 0
                                  : 16,
                          bottom: 8),
                      onTap: () {
                        handleChangeSeat(
                            "${String.fromCharCode(i + 65)}${j + 1}");
                      },
                      isSelected: selectedSeats
                          .contains("${String.fromCharCode(i + 65)}${j + 1}"),
                      label: "${String.fromCharCode(i + 65)}${j + 1}",
                      isNumeric: true,
                    ))),
          ),
        ),
      );
      widgets.add(const SizedBox(
        height: 16.0,
      ));
    }

    return Column(
      children: widgets,
    );
  }

  Widget seatsAvailableIndikator(String indikatorLabel) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: indikatorLabel.toLowerCase() == 'available'
                  ? warnaApp.primaryContainer
                  : (indikatorLabel.toLowerCase() == 'not available'
                      ? warnaApp.onPrimary
                      : warnaApp.secondary)),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          indikatorLabel,
          style: teksApp.bodyMedium!
              .copyWith(fontSize: 18.0, color: warnaApp.secondary),
        )
      ],
    );
  }
}
