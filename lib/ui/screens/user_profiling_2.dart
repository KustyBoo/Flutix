// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'screens.dart';

class UserProfiling2 extends StatefulWidget {
  String nama;
  String email;
  String password;
  String confirmPassword;
  String profilepicture;
  List<String> selectedGenre;

  UserProfiling2({
    required this.nama,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.profilepicture,
    required this.selectedGenre,
  });

  @override
  State<UserProfiling2> createState() => _UserProfiling2State();
}

class _UserProfiling2State extends State<UserProfiling2> {
  bool _loading = false;
  Auth _auth = Auth();

  void handleSubmit() async {
    final name = widget.nama;
    final email = widget.email;
    final password = widget.password;
    final confirmPassword = widget.confirmPassword;
    final profilePicture = widget.profilepicture;
    final genre = widget.selectedGenre;

    if (password != confirmPassword) {
      return;
    }

    setState(() => _loading = true);

    try {
      await _auth.regis(
          name, email, password, confirmPassword, genre, profilePicture, "");

      User newUser = User(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        genre: genre,
        language: "",
        profilePicture: profilePicture,
      );

      Provider.of<ProviderUser>(context, listen: false).addUser(newUser);
      // Navigasi ke halaman success jika diperlukan
      // Navigator.pushNamed(context, "/SuccessPage");
    } catch (e) {
      print('Registration failed: $e');
    }
  }

  List<bool> btnClicked = List.generate(10, (index) => false);
  List<String> teksBtn = [
    "Bahasa Indonesia",
    "English",
    "한국어",
    "Português",
    "普通话",
    "Malay",
    "español",
    "日本語",
    "อักษรเขมร",
    "Tiếng Việt"
  ];

  bool btnAktif = false;

  void cek() {
    btnClicked.forEach((btn) {
      if (btn) {
        btnAktif = true;
      }
    });

    if (btnClicked.every((e) => e == false)) {
      setState(() {
        btnAktif = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //mengisi layar yang kosong
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Language?",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                          top: 42,
                        ),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          spacing: 8,
                          runSpacing: 10,
                          children: List.generate(
                            10,
                            (index) => ElevatedBtn(
                              btnClicked: btnClicked[index],
                              teksCustom: teksBtn[index],
                              fungsiCustom: () {
                                setState(() {
                                  btnClicked[index] = !btnClicked[index];
                                  cek();
                                });
                              },
                              
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                          top: 45,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            handleSubmit();
                            Navigator.pop(context);
                            Navigator.pushNamed(context, "/login");
                          },
                          // onPressed: 
                          child: _loading
                              ? SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : Text(
                                  "Next",
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
