import 'package:flutix/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final warnaBorder = Color(0xFFBC6C25);
  final warnaText = Color(0xFF606C38);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.symmetric(horizontal: 44),
          child: Column(
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
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
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
