// ignore_for_file: prefer_const_constructors

part of 'screens.dart';

class WalletTopup extends StatelessWidget {
  WalletTopup({super.key});

  final TextEditingController _controllerTeks = TextEditingController();

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
                        margin: EdgeInsets.fromLTRB(10, 14, 10, 0),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Amount",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Consumer<TopUpProvider>(
                              builder: (BuildContext context, topup, child) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: TextFLD(
                                    teksHint: "IDR",
                                    teks: topup.getControllerTeks(_controllerTeks),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 30, 10, 27),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Top Up Amount",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            TopUpBtn(),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: warnaApp.primaryContainer.withOpacity(0.6),
                        height: 15,
                      ),
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
