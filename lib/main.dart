import 'package:flutter/material.dart';
import 'package:flutter_flip_clock/flutter_flip_clock.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlipClo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const FlipClo(),
    );
  }
}

class FlipClo extends StatefulWidget {
  const FlipClo({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<FlipClo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FlipClo",
              style: GoogleFonts.bungeeShade(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlipClock.simple(
                  startTime: DateTime.now(),
                  digitColor: Colors.white,
                  backgroundColor: Colors.black,
                  digitSize: 30,
                  timeLeft: const Duration(minutes: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
