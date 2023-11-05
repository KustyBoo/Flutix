// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'screens.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({super.key});

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
                          "Home",
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
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1,
                          left: 57,
                          right: 27,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 317,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/success_checkout.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Text(
                                "You have succesfully check-out the ticket!",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
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
                    "My Ticket",
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
