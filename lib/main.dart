import 'package:flutter/material.dart';
import 'package:my_first_progekt_app_2/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Center(child: Text("Тапшырма 1")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffAAAAAA).withOpacity(0.8),
              ),
              height: 44,
              width: 325,
              child: Center(
                child: Text(
                  'сан:$san',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    san = san - 1;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    height: 40,
                    width: 60,
                    child: const Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    san = san + 1;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    height: 40,
                    width: 60,
                    child: const Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPageState(
                      text: san,
                    ),
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Push',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
            // IconButton(

            // icon: const Icon(
            //  Icons.next_plan,
            //  size: 70,
            // ),
            // onPressed: () {
            //Navigator.of(context).push(
            //  MaterialPageRoute(builder: (context) => SecondPagState()));
            // Navigator.push(
            // context,
            // MaterialPageRoute(
            // builder: (context) => SecondPagState(),
            //),
            // );
            // },
            // )
          ],
        ),
      ),
    );
  }
}
