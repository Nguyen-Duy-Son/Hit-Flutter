import 'dart:ui';
import 'dart:math';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int status = 0;
  int score = 0;
  int maxScore = 0;
  int minScore = 0;
  int cnt = 0;
  int check1=0,check2=0;
  int remainingTime = 10;
  late TinhToan ttRandom;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: status==0?Home():status==1?HomePlaying():HomeGameOver(),
    );
  }

  Widget Home() {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top:200),
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "1+1=2",
                  style: TextStyle(fontSize: 50, color: Colors.blue),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: const Text("Freaking",style: TextStyle(fontSize: 32, color: Colors.white54,fontWeight: FontWeight.w300),),
                  ),
                  Container(
                    child: const Text("Math",
                      style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              margin: const EdgeInsets.only(top:150),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon:const Icon(Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    status=1;
                    remainingTime=10;
                    startGame();
                  });
                },
                iconSize: 30,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
  void checkTrueResult(bool check){
    maxScore = max(score, maxScore);
    if(check==true){
      setState(() {

        score++;
      });
      maxScore = max(score, maxScore);
      remainingTime=10;
      startGame();
    }
    else {
      setState(() {
        status=3;
      });
    }
  }
  void checkFalseResult(bool check){
    if(check==false){
      setState(() {
        score++;
      });
      maxScore = max(score, maxScore);
      remainingTime=10;
      startGame();
    }
    else {
      setState(() {
        status=3;
      });
    }
  }
  void startGame() {
    ttRandom = TinhToan.random();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        remainingTime--;
        if (remainingTime == 0) {
          timer.cancel();
          setState(() {
            status=3;
            remainingTime=10;
          });
        }
      });
    });
  }
  Widget HomePlaying() {
    // TinhToan ttRandom = TinhToan.random();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top:10),
                alignment: Alignment.topRight,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: const Icon(Icons.lock_clock),
                        ),
                        const SizedBox(width: 10,),
                        textBox(noiDung: "$remainingTime", size: 30),
                      ],
                    ),
                    textBox(noiDung: "$score", size: 30),
                  ],
                )

              ),
              Container(
                margin: const EdgeInsets.only(top: 150),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textBox(noiDung: "${ttRandom.number1}", size: 70),
                    const SizedBox(width: 10,),
                    textBox(noiDung: "${ttRandom.dauTinh}", size: 70),
                    const SizedBox(width: 10,),
                    textBox(noiDung: "${ttRandom.number2}", size: 70),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const textBox(noiDung: "=", size: 70),
                    const SizedBox(width: 10,),
                    textBox(noiDung: "${ttRandom.result}", size: 70),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: IconButton(
                        onPressed: (){
                          checkTrueResult(ttRandom.tinhDungSai);
                        },
                        color: Colors.blue,
                        iconSize: 60,
                        icon: const Icon(Icons.done),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: IconButton(
                        onPressed: (){
                          checkFalseResult(ttRandom.tinhDungSai);
                        },
                        color: Colors.red,
                        iconSize: 60,
                        icon: const Icon(Icons.close),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget HomeGameOver() {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "GAME OVER",
                style: TextStyle(color: Colors.white,fontSize: 70),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "current",
                style: TextStyle(color: Colors.white,fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "${score}",
                style: const TextStyle(color: Colors.white,fontSize: 70),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "best",
                style: TextStyle(color: Colors.white,fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "${maxScore}",
                style: const TextStyle(color: Colors.white,fontSize: 70),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          score=0;
                          status = 1;
                          remainingTime=10;
                          startGame();
                        });
                      },
                      color: Colors.red,
                      iconSize: 60,
                      icon: const Icon(Icons.rotate_90_degrees_ccw),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          status = 0;
                          remainingTime=10;
                        });
                      },
                      color: Colors.red,
                      iconSize: 60,
                      icon: const Icon(Icons.home_filled),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class TinhToan {
  int? number1;
  int? number2;
  int? result;
  String? dauTinh;
  bool tinhDungSai;
  static List<String> list = ['+', '-', 'x', '/'];

  TinhToan(this.number1, this.number2, this.result, this.dauTinh, this.tinhDungSai);

  factory TinhToan.random() {
    Random random = Random();
    int number1 = random.nextInt(100) + 1;
    int number2 = random.nextInt(100) + 1;
    // int result = random.nextInt(100) + 1;
    String dauTinh = list[random.nextInt(4)];
    var kq;
    if (dauTinh == '+') {
      kq = number1 + number2;
    } else if (dauTinh == '-') {
      kq = number1 - number2;
    } else if (dauTinh == 'x') {
      kq = number1 * number2;
    } else {
      kq = number1 / number2;
    }
    List listResult = [kq-2,kq-1,kq,kq+1,kq+2,kq+3];
    int result = listResult[random.nextInt(6)];
    bool tinhDungSai = kq == result;
    return TinhToan(number1, number2, result, dauTinh, tinhDungSai);
  }
}
class textBox extends StatelessWidget {
  final String noiDung;
  final double size;
  const textBox({Key? key, required this.noiDung,required this.size,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          "$noiDung",
        style: TextStyle(fontSize: size,color: Colors.white),
      ),
    );
  }
}
