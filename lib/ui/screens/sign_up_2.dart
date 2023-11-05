// ignore_for_file: prefer_const_constructors
part of 'screens.dart';

class SignUp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack (
          children: [
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: 44,
                    left: 44,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "A profile isn’t complete without a photo!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 272,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 41,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 272,
                              height: MediaQuery.of(context).size.height,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFDDA15E).withOpacity(0.4),
                              ),
                              child: Icon(
                                Icons.person,
                                size: 250,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              top: 40,
                              right: 9,
                              child: Container(
                                width: 51,
                                height: 51,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF606C38),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 38,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                          top: 50,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF606C38),
                            foregroundColor: Color(0xFFFEFAE0),
                            minimumSize: Size(152, 42),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              height: 70,
              //container icon
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 15),
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
            ),
          ],
        ),
      ),
    );
  }
}
