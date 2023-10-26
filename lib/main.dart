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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(50),child: AnimatedRotation(
            turns: turns,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: 70,
            ),

          ),),
          ElevatedButton(onPressed: (){
            setState(() {
              turns+= 1/4;
            });
          }, child: Text('Rotate'))
        ],
      ),
    )
    )
    );
  }
}


