import 'package:flutter/material.dart';

class LearningScreen extends StatelessWidget {
  // Define the top text as a const variable
  static const String topText = '1. 저 지금 점심 먹으러 나갈까 하는데, 같이 가실래요?';

  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 64.0),
            const Text(
              topText,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 48.0),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                onPressed: () {
                  // Add the functionality for the '말하기' button here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.green.shade400,
                ),
                child: const Text(
                  '말하기',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(
                height: 16.0), // Adding spacing between the two buttons
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                onPressed: () {
                  // Add the functionality for the '패스' button here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.red.shade400,
                ),
                child: const Text(
                  '패스',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
