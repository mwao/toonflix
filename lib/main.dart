import 'package:flutter/material.dart';

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
          backgroundColor: Colors.black,
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end, //Column 의 mainAxis 는 수직
                    children: [
                      Text('Hey, Siru',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                      Text('Welcome back',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
