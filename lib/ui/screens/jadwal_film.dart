part of 'screens.dart';

class JadwalFilm extends StatefulWidget {
  const JadwalFilm({super.key});

  @override
  State<JadwalFilm> createState() => _JadwalFilmState();
}

class _JadwalFilmState extends State<JadwalFilm> {
  late List<DateTime> dates;
  late DateTime selectedDate;
  int? selectedTime;
  Theater? selectedTheater;
  bool isValid = false;

  @override
  void initState() {
    dates =
        List.generate(7, (index) => DateTime.now().add(Duration(days: index)));
    selectedDate = dates[0];

    super.initState();
  }

  List<String> nama_hari = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    MovieDetail movieDetail = arguments['movieDetail'];

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 36.0,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: defaultMargin, bottom: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back, size: 24),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: defaultMargin, bottom: 16.0),
                  child: titleSection('Choose Date'),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return SelectableBox(
                        jadwal: true,
                          onTap: () {
                            setState(() {
                              selectedDate = dates[index];
                              if (dates[index].day != DateTime.now().day) {
                                selectedTime = null;
                              }
                            });
                          },
                          height: 90,
                          width: 70,
                          isSelected: dates[index].day == selectedDate.day,
                          label:
                              '${dates[index].day.toString()}\n${nama_hari[dates[index].weekday - 1]}',
                          margin: EdgeInsets.only(
                              right: index == 6 ? 0 : 16,
                              left: index == 0 ? defaultMargin : 0));
                    },
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                generateDateTimeSchedule(),
              ],
            ),
          ),
          ElevatedBtn(
            isdis: !isValid,
            teksCustom: "Order",
            fungsiCustom: () {
              if (isValid) {}
            },
          ),
        ],
      ),
    );
  }

  Widget titleSection(title) {
    return Text(
      title,
      style: teksApp.bodyMedium!
          .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }

  Widget generateDateTimeSchedule() {
    List<int> schedules = List.generate(8, (index) => 10 + index * 2);
    List<Widget> widgets = [];

    for (var theater in dummyTheaters) {
      widgets.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: defaultMargin),
              child: titleSection(theater.name),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Wrap(
                direction: Axis.horizontal,
                children: List.generate(schedules.length, (index) {
                  bool isSelected = false;
                  if (selectedTime != null && selectedTheater != null) {
                    if (selectedTime == schedules[index] &&
                        theater == selectedTheater) {
                      isSelected = true;
                    }
                  }
                  return SelectableBox(
                    jadwal: true,
                    onTap: () {
                      setState(() {
                        selectedTheater = theater;
                        selectedTime = schedules[index];
                        isValid = true;
                      });
                    },
                    height: 50,
                    width: 90,
                    isNumeric: true,
                    isSelected: isSelected,
                    isDisabled: schedules[index] < DateTime.now().hour,
                    margin: EdgeInsets.only(right: 20.0, bottom: 20.0),
                    // margin: EdgeInsets.only(
                    //   left: index == 0 ? defaultMargin : 0,
                    //   right: index == schedules.length - 1 ? 0 : defaultMargin,
                    // ),
                    label: '${schedules[index]}:00',
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: widgets,
    );
  }
}
