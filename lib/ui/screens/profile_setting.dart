// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


part of 'screens.dart';

class ProfileSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: warnaApp.primaryContainer,
              height: 60,
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 8, 15, 7),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          "assets/logo_flutix.svg",
                          semanticsLabel: "Logo_Flutix",
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 32,
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(
                            Icons.search_outlined,
                            color: warnaApp.onSecondary,
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(77, 20, 77, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                width: 205,
                                height: 205,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/foto_profil.png"),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 23,
                                right: 8,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: warnaApp.secondary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.mode_edit_outline,
                                      color: warnaApp.onSecondary,
                                      size: 20,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "Lara Diwangka",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              IconButton(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 5),
                                icon: Icon(
                                  Icons.mode_edit_outline,
                                  color: warnaApp.secondary,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: warnaApp.primaryContainer,
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 41,
                    child: Row(
                      children: [
                        Icon(
                          Icons.wallet,
                          color: warnaApp.secondary,
                          size: 43,
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Rp 999.999.999",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "123 456 ***",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/wallet");
                            },
                            child: Text("Top Up"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: warnaApp.primaryContainer,
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.help,
                                size: 43,
                                color: warnaApp.secondary,
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(),
                              ),
                              Expanded(
                                flex: 8,
                                child: Text(
                                  "Help Center",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  color: warnaApp.onPrimary,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.chevron_right,
                                    size: 43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 23, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.g_translate,
                                size: 43,
                                color: warnaApp.secondary,
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(),
                              ),
                              Expanded(
                                flex: 8,
                                child: Text(
                                  "Language",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  color: warnaApp.onPrimary,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.chevron_right,
                                    size: 43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 23, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 43,
                                color: warnaApp.secondary,
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(),
                              ),
                              Expanded(
                                flex: 8,
                                child: Text(
                                  "Rate Flutix App",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  color: warnaApp.onPrimary,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.chevron_right,
                                    size: 43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
