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
  TextEditingController namecontroller = TextEditingController();
  String ? myName;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar:AppBar(
          title: const Text("TextField ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

       body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(padding: const EdgeInsets.all(25),
          child: TextField(

            controller: namecontroller,
            decoration: const InputDecoration(
              hintText: "Enter Name",
              hintStyle: TextStyle(fontSize: 30,color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          ),
          const  SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (){
              myName = namecontroller.text;
              namecontroller.clear();
              setState(() {
                
              });

            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 7),
              decoration:  BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(15)),
              child:const Text("Add Data",style: TextStyle(fontSize: 20,color: Colors.white),)
            ),
          ),
          const SizedBox(
            height: 50,
          ),
           Text(
           "Name:$myName",style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,
          ),
          
        ],
       ),
      ),
    );
  }
}
