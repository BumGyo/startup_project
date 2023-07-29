import 'package:flutter/material.dart';
import 'package:koreanpronounce/learning_screen.dart';
import 'package:koreanpronounce/progress_screen.dart';
import 'package:koreanpronounce/setting_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 64.0), // Adding more spacing above the title
            const Text(
              '한국어 발음 교정',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
                height: 48.0), // Adding spacing between title and buttons
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LearningScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.red.shade400,
                ),
                child: const Text(
                  '학습하기',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProgressScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.blue.shade400,
                ),
                child: const Text(
                  '진행 상황',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => SettingScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.yellow.shade700,
                ),
                child: const Text(
                  '환경 설정',
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
