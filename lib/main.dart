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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'splash design -6'),
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          const Icon(Icons.fullscreen, color: Colors.white),
          const Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3 - 44,
              // color: Colors.black,
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(180)),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/wallpaper-5.jpg'),
                    radius: 77,
                  ),
                  Text(
                    "Osama Bilal",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3 - 45,
              // color: Colors.black,
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(180)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
