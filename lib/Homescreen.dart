import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcom Cats',
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'LoginScreen');
                },
                child: Text(
                  'Go To Login',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
