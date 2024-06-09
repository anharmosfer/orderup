import 'package:flutter/material.dart';

import 'Confirm.dart';

class Sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sign_up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Call us or book a demo and we will setup a new account for you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                      onPressed: () {
                        // Navigate to home_page when the login button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Confirm(),
                          ),
                        );
                      },
                      child: Text(
                        "Call Us",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 69, 199, 255),
                      ),
                    ),
                SizedBox(width: 20),
                ElevatedButton(
                      onPressed: () {
                        // Navigate to home_page when the login button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Confirm(),
                          ),
                        );
                      },
                      child: Text(
                        "Book a demo",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 8, 8),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 69, 199, 255),
                      ),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sign_up(),
  ));
}
