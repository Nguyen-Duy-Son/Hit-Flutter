import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                height: 50,
                child: Stack(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Lịch sử hiến máu",
                          style: TextStyle(color: Colors.white,fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 15,
                      top:10,
                      child: Icon(
                        Icons.forum,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/an.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey
                              ),
                              child: const Icon(
                                Icons.photo_camera,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: const Text(
                        "Nguyễn Duy Sơn",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.greenAccent
                      ),
                      width: 60,
                      height: 30,
                      child: Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: const Text(
                          "Mức 2",
                          style: TextStyle(color: Colors.white,fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      height: 490,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(192, 192, 192, 0.3)
                      ),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromRGBO(192, 192, 192, 0.7),
                                  style: BorderStyle.solid,
                                  width: 1,
                                )
                            ),
                            height: 100,
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                  ),
                                  width: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(192, 192, 192, 0.2),
                                  ),
                                  padding: const EdgeInsets.only(top: 40),
                                  width: 100,
                                  height: 100,
                                  child: const Text(
                                    "Lần 4",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 15,left: 20),
                                        width: MediaQuery.of(context).size.width * 0.65,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "25/01/2024",
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    FontAwesomeIcons.syringe,
                                                      size: 13,
                                                      color: Color.fromRGBO(192, 192, 192, 1),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(left: 8),
                                                    child: const Text(
                                                      "350 ml (Toàn phần)",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Trung tâm Máu Quốc Gia",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                          color: Color.fromRGBO(192, 192, 192, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromRGBO(192, 192, 192, 0.7),
                                  style: BorderStyle.solid,
                                  width: 1,
                                )
                            ),
                            height: 100,
                            margin: const EdgeInsets.only(top:15),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                  ),
                                  width: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(192, 192, 192, 0.2),
                                  ),
                                  padding: const EdgeInsets.only(top: 40),
                                  width: 100,
                                  height: 100,
                                  child: const Text(
                                    "Lần 3",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 15,left: 20),
                                        width: MediaQuery.of(context).size.width * 0.65,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "28/10/2023",
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    FontAwesomeIcons.syringe,
                                                    size: 13,
                                                    color: Color.fromRGBO(192, 192, 192, 1),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(left: 8),
                                                    child: const Text(
                                                      "350 ml (Toàn phần)",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Trung tâm Máu Quốc Gia",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                          color: Color.fromRGBO(192, 192, 192, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromRGBO(192, 192, 192, 0.7),
                                  style: BorderStyle.solid,
                                  width: 1,
                                )
                            ),
                            height: 100,
                            margin: const EdgeInsets.only(top:15),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                  ),
                                  width: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(192, 192, 192, 0.2),
                                  ),
                                  padding: const EdgeInsets.only(top: 40),
                                  width: 100,
                                  height: 100,
                                  child: const Text(
                                    "Lần 2",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 15,left: 20),
                                        width: MediaQuery.of(context).size.width * 0.65,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "05/06/2023",
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    FontAwesomeIcons.syringe,
                                                    size: 13,
                                                    color: Color.fromRGBO(192, 192, 192, 1),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(left: 8),
                                                    child: const Text(
                                                      "350 ml (Toàn phần)",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Trung tâm Máu Quốc Gia",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                          color: Color.fromRGBO(192, 192, 192, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color.fromRGBO(192, 192, 192, 0.7),
                                  style: BorderStyle.solid,
                                  width: 1,
                                )
                            ),
                            height: 100,
                            margin: const EdgeInsets.only(top:15),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                  ),
                                  width: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(192, 192, 192, 0.2),
                                  ),
                                  padding: const EdgeInsets.only(top: 40),
                                  width: 100,
                                  height: 100,
                                  child: const Text(
                                    "Lần 1",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 15,left: 20),
                                        width: MediaQuery.of(context).size.width * 0.65,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                "18/02/2023",
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    FontAwesomeIcons.syringe,
                                                    size: 13,
                                                    color: Color.fromRGBO(192, 192, 192, 1),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(left: 8),
                                                    child: const Text(
                                                      "350 ml (Toàn phần)",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "Trung tâm Máu Quốc Gia",style: TextStyle(fontSize: 12,color: Color.fromRGBO(192, 192, 192, 1)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                          color: Color.fromRGBO(192, 192, 192, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
