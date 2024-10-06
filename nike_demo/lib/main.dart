import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Quantity = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
                color: Color.fromARGB(255, 33, 114, 243),
                fontSize: 22,
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: 500,
              color: Colors.yellow,
              child: Image.asset(
                "assets/shoes.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Nike Air Force 1'07",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromARGB(255, 39, 7, 204)),
                  ),
                  child: const Text(
                    "SHOES",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromARGB(255, 39, 7, 204)),
                  ),
                  child: const Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Column(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                      "With iconic style and legendry comfort,the AF-1 was made to be worn on repeat . Thid iteration puts a fresh spin on the hoopsclassic with crisp leather , eraechoring'80s construction and reflective-design Swoosh logos.",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Quantity",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    if (Quantity > 0) {
                      Quantity--;
                    }
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 35,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Text(
                    "$Quantity",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    Quantity++;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 370,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 39, 7, 204),
                      borderRadius: BorderRadius.circular(20)),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "  PURCHASE",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
