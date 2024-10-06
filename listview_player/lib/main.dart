import 'package:flutter/material.dart';
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
  String ? myname;
  List<String>playersLists = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar:AppBar(
          title: const Text("Textfield ListView Demo",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
             Padding(padding: const EdgeInsets.all(20),
            child: TextField(
                controller: namecontroller,

              style:  const TextStyle(
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                hintText:"Enter Name",
                hintStyle: TextStyle(
                  fontSize: 25,color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),

            ),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap:(){
                myname = namecontroller.text.trim();
                
                if(myname != ""){
                  playersLists.add(myname!);
                  namecontroller.clear;
                  setState(() {
                    
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(17),
                decoration:
                  BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                    ),
                    ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            ListView.builder(
              itemCount: playersLists.length,
              shrinkWrap: true,
              itemBuilder:(context, index){
                return Text(
                  "Name:${playersLists[index]}",
                );
              }
            
              ),
            
            
          ],
        ),
      ),
    );
  }
}
