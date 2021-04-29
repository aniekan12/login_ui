import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

void _navigateToLoginScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff75E6DA),
      appBar: AppBar(
        backgroundColor: Color(0xff75E6DA),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 40,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  "assets/plumb.jpg",
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
            height: 40,
          ),
          Column(
            children: [
              Text(
                'Welcome to Thrill',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 100,
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10.0,
                ),
                child: Text(
                  'Thrill is an an app that connects plumbers, electricians, mechanics, masons, bricklayers, architects and other labourers with clients. This app has been launched in Abuja, Katsina and Lagos State.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            height: 70,
            child: ElevatedButton(
              onPressed: () {
                _navigateToLoginScreen(context);
              },
              style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Color(0xff145DA0),
                onPrimary: Color(0xff75E6DA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                'Explore Now',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
