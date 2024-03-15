import 'dart:math';

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
      title: 'Профиль',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Профиль'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _number_phone = "8 (924) 269 93 77";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _random_number() {
    setState(() {
      _number_phone = "8 (924) ";
      for(int i = 0; i < 7; i++) {
        _number_phone += Random().nextInt(10).toString();
        if (i == 2 || i == 4) {
          _number_phone += " ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.audiotrack,
                        color: Colors.green,
                        size: 100.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 300,
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "Начиная с первого курса бакалавриата занимался алгоритмическим програмирование и изучением языка C++. "
                                "Во время обучения учавствовал над доработкай open-source проекта MariaDB. "
                                "На 4 курсе начал заниматься машинным обучением и анализом данных чем и "
                                "продолжил заниматься в магистратуре."),
                      ),
                    ),

                    const Text(
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      "Контактные данные",
                    ),
                    TextButton(onPressed: _random_number, child: Text('$_number_phone', style: const TextStyle(fontSize: 20),))


                  ],
                ),
                const Column(
                  children: [
                    Text(
                      "Образование",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      width: 500,
                      child: Text(
                          style: TextStyle(fontSize: 20),
                          "Дальневосточный Федеральный Университет"),
                    ),
                    SizedBox(
                      width: 500,
                      child: Text(
                          style: TextStyle(fontSize: 20),
                          "ИМиКТ, Прикладная математика и "
                          "информатика (Системное программирование), "
                          "бакалавриат, 2019 — 2023 GPA-4.88"
                      )
                    ),
                    Text(
                      "Навыки",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 500,
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "— Знание языков программирования "
                            "Python(jupyter, numpy, pandas, scikit-learn, "
                            "matplotlib, seaborn), C++(stl)"
                        )
                    ),
                    SizedBox(
                        width: 500,
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "— Знание классических алгоритмов и структур данных"
                        )
                    ),
                    SizedBox(
                        width: 500,
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "— Знание классическое ML и основ DL"
                        )
                    ),
                    SizedBox(
                        width: 500,
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "— Знание математической статистики и теории вероятностей"
                        )
                    ),
                    SizedBox(
                        width: 500,
                        child: Text(
                            style: TextStyle(fontSize: 20),
                            "— Знание SQL"
                        )
                    ),

                  ],
                )


              ],

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
