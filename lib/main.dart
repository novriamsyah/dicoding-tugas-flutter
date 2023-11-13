import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'misc/constans.dart';
import 'pages/login_page/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: saffron,
          background: backgroundColor,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.poppins(color: ghostWhite),
          bodyLarge: GoogleFonts.poppins(color: ghostWhite),
          labelLarge: GoogleFonts.poppins(color: ghostWhite),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
