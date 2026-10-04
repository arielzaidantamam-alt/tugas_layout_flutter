import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Digit terakhir NIM = 9 (ganjil) → warna tealAccent[100]
    final int lastDigit = 9;
    final bool isOdd = lastDigit % 2 == 1;

    final Color scaffoldColor = isOdd
        ? Colors.tealAccent[100] // toska muda
        : Colors.amber[100];      // kuning muda

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ProfileCard(
        nama: "Ariel Zaidan Tamam",
        nim: "20240801009",
        hobi: "Game & Coding",
        skorAktivitas: 99,
      ),
    );
  }
}
