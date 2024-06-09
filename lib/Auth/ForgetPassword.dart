import 'package:flutter/material.dart';

import 'Confirm.dart';

class ForgetPassword extends StatelessWidget {
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
          fillColor: Colors.white, // Set the background color of the input fields to white
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder( // Set border color when focused
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Color.fromARGB(255, 69, 199, 255)), // Set border color when focused
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
                top: 340,
                left: 20,
                right: 20,
                child: Column(
                  children: [
                  
                    SizedBox(height: defaultPadding),
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Email",
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Color.fromARGB(255, 69, 199, 255)),
                        ),
                      ),
                      style: TextStyle(color: Colors.black), // Set text color to black
                    ),
                    SizedBox(height: defaultPadding),
                  
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
                        // Navigate to home_page when the login button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Confirm(),
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
