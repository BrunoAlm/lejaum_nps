import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;

ThemeData meuTema = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.indigo, // appbar
    onPrimary: Color.fromARGB(255, 255, 255, 255), // titulo appbar
    secondary: Colors.indigo, // botão background
    onSecondary: Color.fromARGB(255, 255, 255, 255), // texto botao
    error: Colors.indigo,
    onError: Colors.indigo,
    background: Color(0xFF38383D),
    onBackground: Color.fromARGB(255, 255, 255, 255),
    surface: Color.fromARGB(255, 255, 255, 255),
    onSurface: Color.fromARGB(255, 255, 255, 255),
  ),
);

fluent.ThemeData temaDesktop = fluent.ThemeData(
  
);
