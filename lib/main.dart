import 'package:flutter/material.dart';
import 'package:spaced_layout/spaced_layout/spaced_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spaced Layout Example'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Horizontal Spacing Example'),
                SpacedLayout(
                  direction: SpacingDirection.horizontal,
                  spacing: 20,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Vertical Spacing Example'),
                SpacedLayout(
                  direction: SpacingDirection.vertical,
                  spacing: 20,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
