// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'screens.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, top: 15),
                  height: 70,
                  //container icon
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 70,
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 32,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Wallet",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                DottedLine(
                  lineThickness: 2,
                  dashLength: 4,
                  dashGapRadius: 4,
                  dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 19),
                        child: Stack(
                          children: [
                            Container(
                              height: 192,
                              decoration: BoxDecoration(
                                color: warnaApp.onPrimary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              left: 10,
                              top: 10,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 27,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "04/52",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "08123333****",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              left: 10,
                              bottom: 10,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 86,
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Rp 999.999.999",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Available Balance",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: warnaApp.primaryContainer.withOpacity(0.6),
                        height: 0,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 18, 10, 22),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Top Up History",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "September 21, 13 : 00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Rp 500.000",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 14, 10, 22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "September 21, 13 : 00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Rp 500.000",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 14, 10, 22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "September 21, 13 : 00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Rp 500.000",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 14, 10, 22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "September 21, 13 : 00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Rp 500.000",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 14, 10, 22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "September 21, 13 : 00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Rp 500.000",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 14, 10, 22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Date",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "September 21, 13 : 00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Total",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Rp 500.000",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: warnaApp.secondary,
                  padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Text(
                    "Top Up",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
