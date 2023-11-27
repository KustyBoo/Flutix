// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers
part of 'screens.dart';

class SignUp2 extends StatefulWidget {
  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  String imageUrl = "";

  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    XFile? image;

    // Check Permissions
    await Permission.photos.request();
    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      // Select Image
      image = await _imagePicker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        var file = File(image.path);

        try {
          // Upload to Firebase
          var snapshot = await _firebaseStorage
              .ref()
              .child(
                  'images/imageName_${DateTime.now().millisecondsSinceEpoch}')
              .putFile(file);

          // Get the download URL
          var downloadUrl = await snapshot.ref.getDownloadURL();

          setState(() {
            imageUrl = downloadUrl;
          });

          print('Image uploaded successfully.');
        } catch (e) {
          print('Error uploading image: $e');
        }
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }

  @override
  Widget build(BuildContext context) {
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
                                  onPressed: () {
                                    uploadImage();
                                    print("masuk");
                                  },
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
