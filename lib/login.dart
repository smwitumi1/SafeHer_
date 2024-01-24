import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        backgroundColor: Colors.white, // Set app bar color to pink
        leading: IconButton(
          icon: Icon(Icons.arrow_circle_left_rounded,
              color: Colors.pink), // Set icon color to white
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Account',
            style: TextStyle(color: Colors.pink)), // Set title color to white
        centerTitle: true,
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person,
                    color: Colors.pink), // Set icon color to pink
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pink), // Set border color to pink
                      ),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit,
                      color: Colors.pink), // Set icon color to pink
                  onPressed: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(height: 20),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50), // Rounded corners
                  borderSide: BorderSide(
                      color: Colors.pink), // Set border color to pink
                ),
                hintText:
                    'Set Alerts and get Alert as Circle members come and go',
                    hintStyle: TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
