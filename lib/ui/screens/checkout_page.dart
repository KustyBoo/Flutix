part of 'screens.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    MovieDetail movieDetail = arguments['movieDetail'];

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
                          "Cancel",
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
                          top: 20,
                          left: 15,
                          right: 27,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width/4,
                              height: MediaQuery.of(context).size.height/6,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage('https://image.tmdb.org/t/p/w1280/${movieDetail?.backdropPath ?? movieDetail?.posterPath}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movieDetail.title,
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "BIG MALL XXI",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Sunday 05, 22:30",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Order Number: FRT11209LOQ",
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 15),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Order Details",
                          style: Theme.of(context).textTheme.displayLarge,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Tambahkan margin kiri dan kanan
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "3 Tickets",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              "Rp.100.000 x 3",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Tambahkan margin kiri dan kanan
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Service fees",
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                            Text("Rp.5.000 x 3",
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Tambahkan margin kiri dan kanan
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total price",
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                            Text("Rp.315.000",
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                      SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Wallet Balance",
                          style: Theme.of(context).textTheme.displayLarge,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Rp. 999.999.999",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: warnaApp.secondary,
                                minimumSize: Size(90, 50),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/walletTopUp');
                              },
                              child: Text(
                                "Top Up",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: warnaApp.primary,
                                  fontFamily: "raleway",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DottedLine(
                        lineThickness: 2,
                        dashLength: 4,
                        dashGapRadius: 4,
                        dashColor: warnaApp.primaryContainer.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: warnaApp.secondary,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessCheckout()));
                  },
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      color: warnaApp.primary,
                      fontFamily: "raleway",
                      fontSize: 16,
                    ),
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
