import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar:AppBar(
          title: const Text("Aspect Ratio",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR77xGIoe-cYX-PqEJ2_IzwLgUv9O5twcteOg&s",fit: BoxFit.cover,),
          ),
        ),  
      ),
    );
  }
}