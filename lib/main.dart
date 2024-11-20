// import 'package:myapp/screens/categories.dart';
import 'package:flutter/material.dart';
import 'package:myapp/data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

const corTema = Color.fromARGB(255, 131, 57, 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: corTema,
        ),
      ),
      home: const MyHomePage(title: 'Crypto Flutter'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
        
      ),

      body: ListView.builder(
        itemCount: availableCategories.length,
        itemBuilder: (ctx, index) {
          final category = availableCategories[index];
          return Card(
            color: Color.fromARGB(132, 131, 57, 0),
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
            child: ListTile(
              title: Text(
                category.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                '\$${category.price.toStringAsFixed(2)}', // Exibe o preço formatado.
                style: const TextStyle(color: Colors.white70),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  category.title[0], // Exibe a primeira letra do título.
                  style: TextStyle(color: category.color),
                ),
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
				currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Minha conta"),
          BottomNavigationBarItem(
            icon: Icon(Icons.star), label: "Meus pedidos"),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
