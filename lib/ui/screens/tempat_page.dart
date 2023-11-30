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
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 48,
                            height: 70,
                            child: IconButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 32,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Big Mall XXI",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Material(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            seatsAvailableIndikator('Available'),
                            seatsAvailableIndikator('Not Available'),
                            seatsAvailableIndikator('Your Seat'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 50,
                    thickness: 3,
                    color: warnaApp.secondary,
                  ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: generateSeats(),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Material(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: warnaApp.surface, width: 3)),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Screen',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: warnaApp.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                    child: Text('Check-Out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget generateSeats() {
    List<int> numberofSeats = [6, 6, 6, 6, 6, 6, 6, 6];
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: numberofSeats.length,
      itemBuilder: (BuildContext context, int i) {
        return Column(
          children: [
            Material(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  numberofSeats[i],
                  (j) => SelectableBox(
                    jadwal: false,
                    height: tinggi / 18,
                    width: lebar / 10,
                    margin: EdgeInsets.only(
                      right: j + 1 == 3 ? 50 : (j + 1 == 6 ? 0 : 16),
                      bottom: 6,
                    ),
                    onTap: () {
                      handleChangeSeat(
                          "${String.fromCharCode(i + 65)}${j + 1}");
                    },
                    isSelected: selectedSeats
                        .contains("${String.fromCharCode(i + 65)}${j + 1}"),
                    label: "${String.fromCharCode(i + 65)}${j + 1}",
                    isNumeric: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        );
      },
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
