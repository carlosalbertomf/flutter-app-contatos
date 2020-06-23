import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contatos em Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Contatos'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _index = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text ('Adicionar contato'),
              activeIcon: Icon(Icons.add, color: Colors.red)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.refresh),
              title: Text ('Atualizar lista'),
              activeIcon: Icon(Icons.refresh, color: Colors.red)
          ),

        ],
      ),


      appBar: AppBar(
          centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          Icon(Icons.add)
        ],
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, //se pressionado, chama _incrementCounter
        tooltip: 'Increment',
        child: Icon(Icons.add), //layout do botão
      ),
    );
  }
}