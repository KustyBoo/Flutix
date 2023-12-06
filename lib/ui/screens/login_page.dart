part of 'screens.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final warnaBorder = Color(0xFFBC6C25);
  final warnaText = Color(0xFF606C38);
  bool _loading = false;
  var _auth = Auth();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  void handleSubmit() async {
    setState(() => _loading = true);
    try {
      String? email = _emailController.text;
      String? password = _passController.text;
      await _auth.login(email, password);

      Navigator.pushNamed(context, "/home");
    } catch (e) {
      print(_emailController.text.trim());
      print('Login failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.symmetric(horizontal: 44),
          child: ListView(
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome Back,',
                style: TextStyle(
                  color: Color(0xFF283618),
                  fontSize: 30,
                ),
              ),
              Text(
                'Explorer!',
                style: TextStyle(
                  color: Color(0xFF283618),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email Address",
                  style:
                      TextStyle(color: warnaText, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Type Here...',
                  hintStyle: TextStyle(
                      color: Color(0xFFB9C1A0), fontWeight: FontWeight.bold),
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: warnaBorder), // Menggunakan warna borderColor
                  ),
                  focusedBorder: OutlineInputBorder(
                    // Menggunakan focusedBorder
                    borderSide: BorderSide(
                        color: warnaBorder), // Menggunakan warna borderColor
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style:
                      TextStyle(color: warnaText, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: _passController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Type Here...',
                  hintStyle: TextStyle(
                      color: Color(0xFFB9C1A0), fontWeight: FontWeight.bold),
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: warnaBorder), // Menggunakan warna borderColor
                  ),
                  focusedBorder: OutlineInputBorder(
                    // Menggunakan focusedBorder
                    borderSide: BorderSide(
                        color: warnaBorder), // Menggunakan warna borderColor
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Continue to Sign In',
                      style: TextStyle(color: Color(0xFF283618), fontSize: 20),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      decoration: ShapeDecoration(
                          color: Color(0XFF606C38), shape: CircleBorder()),
                      child: !_loading
                          ? IconButton(
                              onPressed: () => handleSubmit(),
                              icon: Icon(Icons.arrow_forward),
                              color: Colors.white,
                            )
                          : SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup1");
                },
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                    color: Color(0xFFBC6C25),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
