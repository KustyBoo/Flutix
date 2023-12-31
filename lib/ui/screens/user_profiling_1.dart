// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'screens.dart';

class UserProfiling1 extends StatelessWidget {
  String nama;
  String email;
  String password;
  String confirmPassword;
  String profilepicture;

  UserProfiling1({
    required this.nama,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.profilepicture,
  });

  @override
  Widget build(BuildContext context) {
    List<String> genre = [];

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
                          "What's your type?",
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
                        child: ElevatedBtnIcon(),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                          top: 45,
                        ),
                        child: Consumer<KategoriProvider>(
                          builder: (BuildContext context, kategori, child) {
                            return ElevatedButton(
                              onPressed: () {
                                for (String item in kategori.kategoriClicked) {
                                  genre.add(item);
                                }
                                print(genre);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UserProfiling2(
                                      nama: nama,
                                      email: email,
                                      password: password,
                                      confirmPassword: confirmPassword,
                                      profilepicture: "",
                                      selectedGenre: genre,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "Next",
                              ),
                            );
                          },
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
