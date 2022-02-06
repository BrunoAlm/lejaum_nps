import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Desktop();
    // return LayoutBuilder(builder: (_, constraints) {
    //   var largura = constraints.maxWidth;
    //   return largura < 400
    //       ? const Mobile()
    //       : largura < 1000
    //           ? const Tablet()
    //           : const Desktop();
    // });
  }
}

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Mobile'),
      ),
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Tablet'),
      ),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(250, 216, 216, 216),
        child: Column(
          children: [
            // ConstrainedBox(
            //   constraints: BoxConstraints(maxWidth: 400, maxHeight: 200),
            // child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'Pesquisar:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 30,
                    width: 300,
                    child: fluent.TextBox(),
                  ),
                ],
              ),
            ),
            // ),
            const SizedBox(height: 30),
            Center(
              child: fluent.Button(
                onPressed: () {},
                child: const Text('Clica ai'),
              ),
            ),
          ],
        ));
  }
}
