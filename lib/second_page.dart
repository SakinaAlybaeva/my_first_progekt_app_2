import 'package:flutter/material.dart';
import 'package:my_first_progekt_app_2/third_page.dart';

class SecondPageState extends StatelessWidget {
  SecondPageState({super.key, required this.text});
  int text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Second Page'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffAAAAAA).withOpacity(0.8),
                ),
                height: 44,
                width: 325,
                child: Center(
                  child: Text(
                    'сан: $text ',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Push 3',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
