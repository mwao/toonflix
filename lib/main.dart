import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';
import 'package:toonflix/widgets/currency_card_new.dart';

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
//           ))
//   }
// }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
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
                      '\$5,194,482',
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
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, //row의 메인은 가로축 , cross는 세로축
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 36),
                        ),
                        Text(
                          'view all',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F2123),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child:
                              // Row 는 가로로 item 정렬
                              Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Euro',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text('6,428',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('EUR',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  )
                                ],
                              ),
                              Transform.scale(
                                scale: 2,
                                child: Transform.translate(
                                  offset: const Offset(-5, 12),
                                  child: const Icon(
                                    Icons.euro_rounded,
                                    color: Colors.white,
                                    size: 85,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: const CurrencyCard(
                          name: 'Bitcoin',
                          code: 'BIT',
                          amount: '9 785',
                          icon: Icons.currency_bitcoin,
                          isInverted: true),
                    ),
                    // Transform.translate(
                    //   offset: const Offset(0, -30),
                    //   child: const CurrencyCard(
                    //       name: 'Dollar',
                    //       code: 'USD',
                    //       amount: '9 75',
                    //       icon: Icons.monetization_on_outlined,
                    //       isInverted: false),
                    // ),
                    const CurrencyCardNew(
                        name: 'Dollar',
                        code: 'USD',
                        amount: '9 75',
                        offset: -50,
                        icon: Icons.monetization_on_outlined,
                        isInverted: false)
                  ],
                )),
          )),
    );
  }
}
