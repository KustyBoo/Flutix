part of 'screens.dart';

class JadwalFilm extends StatelessWidget {
  const JadwalFilm({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth =
        MediaQuery.of(context).size.width * 0.2; // Adjust as needed
    double buttonHeight = 50; // You can adjust the height as needed
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
                          "The Batman (2023)",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, top: 5),
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 55),
                        child: Text(
                          "Description",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 175),
                        child: Text(
                          "Schedule",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 2,
                  width: 550,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(left: 255),
                  height: 2,
                  width: 265,
                  color: Colors.black,
                ),
                SizedBox(height: 15),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                // margin: EdgeInsets.symmetric(horizontal: 8),
                                // width: MediaQuery.of(context).size.height * 0.10,
                                // height: MediaQuery.of(context).size.height * 0.08,
                                // decoration: BoxDecoration(
                                //   color: Colors.brown, // Outer square color
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.08,
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "25",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Fri",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                // width: MediaQuery.of(context).size.height * 0.10,
                                // height: MediaQuery.of(context).size.height * 0.08,
                                // decoration: BoxDecoration(
                                //   color: Colors.brown, // Outer square color
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.08,
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "26",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Sat",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                // width: MediaQuery.of(context).size.height * 0.10,
                                // height: MediaQuery.of(context).size.height * 0.08,
                                // decoration: BoxDecoration(
                                //   color: Colors.brown, // Outer square color
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.08,
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "27",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Sun",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                // width: MediaQuery.of(context).size.height * 0.10,
                                // height: MediaQuery.of(context).size.height * 0.08,
                                // decoration: BoxDecoration(
                                //   color: Colors.brown, // Outer square color
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.08,
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "28",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Mon",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                // width: MediaQuery.of(context).size.height * 0.10,
                                // height: MediaQuery.of(context).size.height * 0.08,
                                // decoration: BoxDecoration(
                                //   color: Colors.brown, // Outer square color
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.height *
                                        0.08,
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.brown,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "29",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Tue",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 2,
                        width: 550,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "City Centrum XXI",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Spacer(), // Add Spacer to push the next text to the right edge
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "Rp.100.000",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("14.30"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("16.45"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("18.30"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("20.15"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // baris 2 elevated
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("14.30"),
                          ),
                          SizedBox(width: 45),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("16.45"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 2,
                        width: 550,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Plaza Mulia CGV",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Spacer(), // Add Spacer to push the next text to the right edge
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "Rp.100.000",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("14.30"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("16.45"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("18.30"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("20.15"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // baris 2 elevated
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("14.30"),
                          ),
                          SizedBox(width: 45),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("16.45"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 2,
                        width: 550,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "BIG Mall XXI",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Spacer(), // Add Spacer to push the next text to the right edge
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "Rp.100.000",
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("14.30"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add action for the button, e.g., navigate or perform some operation
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("16.45"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("18.30"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("20.15"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // baris 2 elevated
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("14.30"),
                          ),
                          SizedBox(width: 45),
                          ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(buttonWidth, buttonHeight),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: Text("16.45"),
                          ),
                        ],
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
                  height: 50,
                  color: warnaApp.secondary,
                  padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Text(
                    "Buy Tickets",
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
