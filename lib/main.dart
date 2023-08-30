import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 250, 250)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'AppDio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController _nomeDigitado = TextEditingController();

String nome = '';

class _MyHomePageState extends State<MyHomePage> {
  atualizar() {
    setState(() {
      nome;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: TextField(
              controller: _nomeDigitado,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.trending_flat_outlined),
                  border: OutlineInputBorder(),
                  hintText: "Digite um nome para gravar..."),
            ),
            padding: EdgeInsets.all(30),
          ),
          Container(
            child: TextButton(
              child: Text(
                'Gravar',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 3,
                fixedSize: Size(200, 25),
              ),
              onPressed: () {
                var _nome = _nomeDigitado.text;
                nome = _nome;
                atualizar();
              },
            ),
            padding: EdgeInsets.all(30),
          ),
          Text(nome),
        ],
      ),
    );
  }
}
