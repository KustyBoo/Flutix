part of 'screens.dart';

class SignUp1 extends StatefulWidget {
  SignUp1({Key? key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final TextEditingController ctrlEmail = TextEditingController();
  final TextEditingController ctrlNama = TextEditingController();
  final TextEditingController ctrlPassword = TextEditingController();
  final TextEditingController ctrlConfirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final warnaBorder = Color(0xFFBC6C25);
    final warnaText = Color(0xFF606C38);

    return SafeArea(
      child: Scaffold(
        body: Stack(
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
                    crossAxisAlignment: CrossAxisAlignment.start, // Mengubah alignment menjadi kiri atas
                    children: [
                      Center(
                        child: Text(
                          "Get Started With Us!",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 22,
                              fontWeight: FontWeight.w200,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 41),
                      Text("Email Address", style: TextStyle(
                        color: warnaText,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Type Here...', hintStyle: TextStyle(
                            color: Color(0xFFB9C1A0),
                            fontWeight: FontWeight.bold
                          ),
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                          focusedBorder: OutlineInputBorder( // Menggunakan focusedBorder
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Name", style: TextStyle(
                        color: warnaText,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Type Here...', hintStyle: TextStyle(
                            color: Color(0xFFB9C1A0),
                            fontWeight: FontWeight.bold
                          ),
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                          focusedBorder: OutlineInputBorder( // Menggunakan focusedBorder
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Password", style: TextStyle(
                        color: warnaText,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      TextField(
                        obscuringCharacter: '•',
                        decoration: InputDecoration(
                          hintText: 'Type Here...', hintStyle: TextStyle(
                            color: Color(0xFFB9C1A0),
                            fontWeight: FontWeight.bold
                          ),
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                          focusedBorder: OutlineInputBorder( // Menggunakan focusedBorder
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                        ),
                        obscureText: true, // Hide the password
                      ),
                      SizedBox(height: 20),
                      Text("Confirm Password", style: TextStyle(
                        color: warnaText,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      TextField(
                        obscuringCharacter: '•',
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Type Here...', hintStyle: TextStyle(
                            color: Color(0xFFB9C1A0),
                            fontWeight: FontWeight.bold
                          ),
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                          focusedBorder: OutlineInputBorder( // Menggunakan focusedBorder
                            borderSide: BorderSide(color: warnaBorder), // Menggunakan warna borderColor
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF606C38),
                            foregroundColor: Color(0xFFFEFAE0),
                            minimumSize: Size(200, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () {
                            PlaceholderUser(email: ctrlEmail.text,nama: ctrlNama.text,password: ctrlPassword.text);
                            Navigator.pushNamed(context, "/signup2");
                          },
                          child: 
                          Text(
                            "Continue",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),
                                            Center(
                        child: TextButton(
                          onPressed: () {
                            // Tambahkan fungsi navigasi ke halaman Sign In di sini
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFBC6C25), // Warna teks "Sign In"
                              fontWeight: FontWeight.bold, // Membuat tebal (bold)
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
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                width: 50,
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
            ),
          ],
        ),
      ),
    );
  }
}
