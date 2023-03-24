import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  /// *Aumenta* en 1 la variable [_MyHomePageState._counter] [String].
  /// 
  /// __Agregar mas información.__
  /// ```dart
  ///   String textoPrueba = 'Hola mundo'.
  /// ```
  /// Lista desordenada
  /// * Opción 1
  ///   + Opción 2
  ///     - Opción 3
  /// 
  /// Lista ordenada
  /// 1. Opción 1
  /// 2. Opción 2
  /// 3. Opción 3
  /// 
  /// Enlaces
  /// 
  ///  [enlace]: https://www.google.com/
  /// 
  /// * https://www.google.com/
  /// * [google](https://www.google.com/)
  /// * [google con referencia][enlace]
  /// 
  /// # Titulo 1
  /// ## Titulo 2
  /// ### Titulo 3
  /// #### Titulo 4
  /// 
  /// <table>
  ///   <tr>
  ///     <td>Celda 1</td>
  ///     <td>Celda 2</td>
  ///     <td>Celda 3</td>
  ///   </tr>
  ///   <tr>
  ///     <td>Celda 4</td>
  ///     <td>Celda 5</td>
  ///     <td>Celda 6</td>
  ///   </tr>
  /// </table>
  // Este es un comentario

  /*Este
  es
  un
  comentario
  en bloque
  */
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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
