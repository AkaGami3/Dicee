import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const diceapp());
}

class diceapp extends StatelessWidget {
  const diceapp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: FirstPage() ,
    );
  }
}
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var leftDiceNumber = '2';
  var g
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice App'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    Random random = new Random();
                    int randomNumber = random.nextInt(6) + 1;
                    leftDiceNumber = randomNumber.toString();

                  });
                },
                child:Image.asset('assets/'),
              ),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {

                  });
                },
                child:Image.asset('assets/dice2.png'),
              ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}

