import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff75E6DA),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xff75E6DA),
        elevation: 0,
      ),
      body: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(90.0, 20.0, 40.0, 10.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                      "assets/plumb.jpg",
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Flexible(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.email_rounded,
                      size: 20,
                    ),
                  ),
                  fillColor: Color(0xff189AB4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: '',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Flexible(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.lock,
                      size: 20,
                    ),
                  ),
                  fillColor: Color(0xff189AB4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: '',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 80,
            width: 230,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: Color(0xff05445E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xff189AB4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
