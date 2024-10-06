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
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
  
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text(
            "My cart",

            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.purple),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),

       body:Column(
        children: [
          const SizedBox(height: 10,),
          
          Container(
            padding: const EdgeInsets.all(11),
            margin: const EdgeInsets.all(13),
            height: 200,
            width: 415,
            clipBehavior: Clip.antiAlias,
           
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Color.fromARGB(255, 245, 242, 245),
            ),
             child:Row(
            children: [
              Container(
                height: 150,
                width: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
,                ),
                child:Image.asset("assets/shoes.jpg",fit: BoxFit.cover,),
                ),
                const SizedBox( width: 10,),

                Container(
                  width:200,
                  height: 150,
                  child: Column( children: [const Row(children: [ Text("Nike Shoes",style: TextStyle(fontWeight: FontWeight.w700,fontSize:25),),],),
                  Container(
                    width: 190,
    
                    child:const Text("With iconic style and legendry comfort, on repeat.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),),
                     Row(
                      children:  [const Text("\$570.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                      const SizedBox(width: 5,),
                      IconButton(onPressed: (){qty--;}, icon: const Icon(Icons.remove)),

                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration( border:Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(5),),
                        
                        alignment: Alignment.center,
                        child:Text("$qty",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       
                      ),
                      IconButton(onPressed: (){qty++;
                      setState(() {
                        
                      });},
                       icon:const Icon(Icons.add)),
                      ],
                    ),
                  ],
                  ),
                ),
                
                ],
              
          ),
          ),
           Container(
            padding: const EdgeInsets.all(11),
            margin: const EdgeInsets.all(13),
            height: 200,
            width: 415,
            clipBehavior: Clip.antiAlias,
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Color.fromARGB(255, 245, 242, 245),
            ),
             child:Row(
            children: [
              Container(
                height: 150,
                width: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
,                ),
                child:Image.asset("assets/shoes.jpg",fit: BoxFit.cover,),
                ),
                const SizedBox( width: 10,),

                Container(
                  width:200,
                  height: 150,
                  child: Column( children: [const Row(children: [Text("Nike Shoes",style: TextStyle(fontWeight: FontWeight.w700,fontSize:25),),],),
                  Container(
                    width: 190,
    
                    child:const Text("With iconic style and legendry comfort, on repeat.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),),
                    SizedBox(width: 20,),
                    
                     Row(
                      children:  [const Text("\$570.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                      const SizedBox(width: 5,),
                      IconButton(onPressed: (){qty--;}, icon: const Icon(Icons.remove)),

                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration( border:Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(5),),
                        
                       alignment: Alignment.center,
                       child:Text("$qty",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                      IconButton(onPressed: (){qty++;}, icon:const Icon(Icons.add)),
                      ],
                    ),
                  ],
                  ),
                ),
                
                ],
              
          ),
          ),
              
            const Spacer(),

            Container(
              padding: const EdgeInsets.all(30),
              child: const Column(
                children: [
                  Row( children: [Text("Subtotal:",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),Spacer(),Text("\$800",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)],),
                
                Row(
                  children: [Text("Delivery Fee:",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),Spacer(),Text("\$5.00",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)],
                ),
                Row(
                  children: [Text("Discount:",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 23),),Spacer(),Text("\$40%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)],
                ),
                ],
              ),
            ),

            Container(
              height: 60,
              width: 340,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),color: const Color.fromARGB(255, 33, 58, 243),
              ),
              child: GestureDetector(
                onTap: (){},
                child: const Text("Checkout for \$480.00",style: TextStyle(fontSize: 20,color: Colors.white),),
                
              ),
            ),
            const SizedBox(height: 30,),
           ],
          
        ),
      ), 
      );  
  }
}
