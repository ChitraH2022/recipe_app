import 'package:flutter/material.dart';
import 'indianbread.dart';
import 'indiancurry.dart';
import 'indiansnack.dart';
import 'indiandessert.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Show splash screen for 6 seconds and navigate to HomePage
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'), // Splash image
            fit: BoxFit.cover, // Makes the image cover the entire screen
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Indian Food Recipes",
          style: TextStyle(fontFamily: 'CustomFont'),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        toolbarHeight: 70, // Custom height for app bar
      ),
      body: Container(
        // Background image container
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img.png'), // Provide the path to your image
            fit: BoxFit.cover, // Makes the image cover the entire background
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Welcome to Indian Food Recipe App",
                style: TextStyle(fontFamily: 'CustomFont', fontSize: 15, color: Colors.blueGrey, backgroundColor: Colors.white),
                textAlign: TextAlign.center,

              ),
              Text(
                "Choose a category to explore delicious recipes",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, backgroundColor: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Add some spacing between the text and the grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    _buildButton(context, 'Indian Bread', IndianBreadPage()), // Navigate to Indian Bread page
                    _buildButton(context, 'Indian Curry', IndianCurryPage()), // Navigate to Indian Curry page
                    _buildButton(context, 'Indian Snack', IndianSnackPage()), // Navigate to Indian Snack page
                    _buildButton(context, 'Indian Dessert', IndianDessertPage()), // Navigate to Indian Dessert page
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, Widget page) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orangeAccent, // Button color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(16),
      ),
      onPressed: () {
        // Navigate to the respective page when button is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
