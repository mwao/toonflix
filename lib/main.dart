import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';

class Player {
  // String name = 'nico';
  String? name; // name을 가질수도있고 아닐수도있음.

  // Player(this.name); //constructor  Player("nico");
  Player({required this.name}); // Player(name: "nico");
}

void main() {
  runApp(App());
  var nico = Player(name: "nico");
}

// 기본 ver.
// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('This is AppBar'),
//           ),
//           body:
//               // Text('Hello Flutter!'),
//               Center(
//             child: Text('Hello Flutter!'),
//           )),
//     );
//   }
// }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
              padding: // EdgeInsets.all(10)
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end, //Column 의 mainAxis 는 수직
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('Hey, Siru',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800)),
                          Text('Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$5 194 482',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Button(
                        bgColor: Colors.amber,
                        text: 'Transfer',
                        textColor: Colors.black,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF1F2123),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Text(
                            'Request',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
