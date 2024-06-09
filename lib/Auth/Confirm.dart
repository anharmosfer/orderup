import 'package:flutter/material.dart';

import 'New_password.dart';

class Confirm extends StatelessWidget {
  final double defaultPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        primaryColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            foregroundColor: Colors.black38,
            backgroundColor: Colors.white,
            shape: const StadiumBorder(),
            side: BorderSide(color: Color.fromARGB(255, 69, 199, 255)),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Color.fromARGB(255, 69, 199, 255)),
          ),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/logo1.PNG",
                      width: 190,
                      height: 190,
                    ),
                    // Add other widgets as needed
                  ],
                ),
              ),
              Positioned(
                top: 325,
                left: 155,
                child: Text(
                  "enter the code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black54,
                  ),
                ),
              ),
              
              Positioned(
                top: 370,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "__   __   __   __   __   __",
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 69, 199, 255),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 69, 199, 255),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                      SizedBox(height: defaultPadding),
                    GestureDetector(
                      child: const Text(
                        "Forget password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Positioned(
                top: 580,
                left: 120,
                right: 120,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to Confirm screen when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => New_password(),
                          ),
                        );
                      },
                      child: Text(
                        "Confirm",
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
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Confirm());
}
