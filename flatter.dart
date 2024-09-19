import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple UI App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Text widget displaying a welcome message
              Text(
                'Welcome to My App!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20), // Spacer between widgets
              
              // ElevatedButton widget
              ElevatedButton(
                onPressed: () {
                  print('Button Clicked!'); // Prints message to console
                },
                child: Text('Click Me'),
              ),
              SizedBox(height: 20), // Spacer between widgets

              // Image widget displaying an image from the internet
              Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
