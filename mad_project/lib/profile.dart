import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'drawer.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> getUser() async {
  final user = FirebaseAuth.instance.currentUser;
  final email = user.email;
  return Text(email);
  // here you write the codes to input the data into firestore
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final myController = TextEditingController();
  bool edit = false;

  Future<void> getUser() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Name, email address, and profile photo URL
      final email = user.email;
      print(email);
      print(myController.text);
      // Check if user's email is verified

      if (myController != null) {
        String email = myController.text;
        print(email);
        await user?.updateEmail(email);
      }
      // Navigator.pop(context);
    }
  }

  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final email = user.email;

    return Scaffold(
        appBar: AppBar(title: Text('Profile')),
        drawer: MyDrawer(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Stack(alignment: Alignment.center, children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Cho Zhi Xian",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/superhero.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name:', style: TextStyle(fontSize: 22)),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                    Text("Cho Zhi Xian",
                        style: TextStyle(fontSize: 22, color: Colors.orange)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Container(
                width: 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gender:', style: TextStyle(fontSize: 22)),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                    Text("Male",
                        style: TextStyle(fontSize: 22, color: Colors.orange)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Container(
                width: 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email:', style: TextStyle(fontSize: 22)),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                    Text(email,
                        style: TextStyle(fontSize: 22, color: Colors.orange)),
                  ],
                ),
              ),
              edit == true
                  ? Container(
                      width: 550,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          controller: myController,
                          decoration:
                              InputDecoration(hintText: 'Enter New Email Here'),
                        ),
                      ),
                    )
                  : Text(''),
              edit == true
                  ? SizedBox(
                      height: 0,
                    )
                  : Text(''),
              Container(
                width: 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number:', style: TextStyle(fontSize: 22)),
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                    Text('94559849',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              ),
              edit == false
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          edit = true;
                          print(edit);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          textStyle: const TextStyle(color: Colors.white)),
                      child: const Text('Edit Profile'),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          edit = false;
                          print(edit);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          textStyle: const TextStyle(color: Colors.white)),
                      child: const Text('Edit Profile'),
                    ),
              edit == true
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          getUser();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 12.0,
                          textStyle: const TextStyle(color: Colors.white)),
                      child: const Text('Change Email'),
                    )
                  : Text(' ')
            ],
          ),
        ])));
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.amberAccent[400];
    Path path = Path()
      ..relativeLineTo(0, 155)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 155)
      ..relativeLineTo(0, -155)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
