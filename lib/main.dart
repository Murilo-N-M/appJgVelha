import 'package:flutter/material.dart';
import 'componentes/jgVelha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = "Jogo da velha";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 15,
              child: Row(
                children: [
                  Expanded(
                    flex: 12,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 15,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 217, 217, 233),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black26, width: 3),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 39, 13, 13),
                              blurRadius: 15,
                              offset: Offset(10, 15)),
                        ],
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: JgVelha(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: Container(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                color: Colors.amberAccent,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Feito por Murilo Nunes Miguel'),
                    Text('Em 13/12/2024'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
