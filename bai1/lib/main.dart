import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:intl/intl.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // DateTime dateNow = DateTime.now();
    // String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateNow);
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: [
                Container(
                  padding: const  EdgeInsets.all(20),
                  margin:const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Hi, Nguyễn Duy Sơn",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.notifications_none_rounded,
                          size: 35,
                          color: Color.fromRGBO(79,79,79,0.5),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Positioned(
                      top: -10,
                      left: 10,
                      child: Image.asset('assets/images/logo.jpg', width: 100,fit: BoxFit.cover,),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(232, 232, 232, 0.5),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      margin: const EdgeInsets.fromLTRB(10, 30, 20, 0),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(232, 232, 232, 0.3),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            padding:  const EdgeInsets.fromLTRB(160, 10, 10, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          const Column(
                                            children: [
                                              Text("Thời khoá biểu"),
                                              Text(
                                                "16 tháng 3",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
                                              ),
                                              child: const Text(
                                                'Lịch thi',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  height: 3,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                          Container(
                            alignment: Alignment.center,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Không có lịch!", style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
                                SizedBox(width: 6),
                                Text(
                                  "Xem thêm TKB",
                                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),


                  ]
                ),

                Container(
                  alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 20),
                    child:const Text("Thông báo gần đây",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.left,)
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(232, 232, 232,0.3),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding:const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: const Row(
                          children: [
                            Expanded(// sử dụng để mở rộng 1 widget con , lấp đầy ko gian trống có sẵn trong widget cha
                              child: Text(
                                "THÔNG BÁO V/v mở, không mở các lớp học phần trong học kỳ 2 năm 2023-2024 cho sinh viên Đại học các khoá",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue,
                                ),
                                textAlign: TextAlign.left,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.schedule_sharp),
                          SizedBox(width: 5),
                          Text("03:30 02/02/2024"),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(20, 20, 20,0),
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child:const Text("Tiện ích",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.left,)
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  // Icons.notifications_none,
                                  Icons.payments_outlined,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("Tài chính",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.bar_chart,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("Kết quả HP",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.library_books_outlined,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("Học phần",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.school_outlined,
                                  size: 40,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("Kết quả HP",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  // Icons.notifications_none,
                                  Icons.local_phone_outlined,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("DV một cửa",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.edit_calendar,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                  child: const Text(
                                    "Đánh giá rèn luyện",
                                    style: TextStyle(fontSize: 12,),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  )
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.help_outline,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("Hỏi đáp",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromRGBO(232, 232, 232,0.4),
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.edit,
                                  size: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              const Text("Kết quả HP",style: TextStyle(fontSize: 12),textAlign: TextAlign.center)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )

    ));
  }
}
