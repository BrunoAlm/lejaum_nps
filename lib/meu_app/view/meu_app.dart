import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:lejaum_nps/meu_app/controller/theme_data.dart';
import 'dart:io' show Platform;
// Minhas telas
import '../../telas/home/view/home_page.dart';
import '../../telas/question_1/view/question_1.dart';
import '../../telas/question_2/view/question_2.dart';

// ------------
class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isWindows
        ? fluent.FluentApp(
            debugShowCheckedModeBanner: false,
            theme: temaDesktop,
            home: const HomePage(),
          )
        : MaterialApp(
            theme: meuTema,
            initialRoute: '/',
            routes: {
              '/': (context) => const HomePage(),
              '/question1': (context) => const Question1(),
              '/question2': (context) => const Question2(),
            },
          );
  }
}
