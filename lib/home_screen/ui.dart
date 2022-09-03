import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/data.dart';
import 'package:flutter_application_1/src/data_first_line.dart';

import '../src/calculate.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Calculate cal = Calculate();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 130, right: 30.0),
                          child: Text(
                            cal.calNum,
                            style: const TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 10, right: 30.0),
                          child: const Text(
                            "24.45",
                            style: TextStyle(
                                fontSize: 55,
                                color: Color.fromARGB(255, 25, 238, 32)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(top: 33, left: 30.0),
                      child: const Divider(
                        color: Colors.grey,
                        thickness: 2,
                        indent: 45,
                        endIndent: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    DataButton1(
                        onPress: (data) => setState(() {
                          if(data == "AC"){
                            cal.clearNum();
                          }
                          else if(data == "DEL"){
                            cal.delNum();
                          }else{
                            cal.addNum(data);
                          }
                            }),
                        data: const ["AC", "DEL", "%", "÷"]),
                    DataButton(
                        onPress: (data) => setState(() {
                              cal.calNum = cal.calNum + data;
                            }),
                        data: const ["7", "8", "9", "×"]),
                    DataButton(
                        onPress: (data) => setState(() {
                              cal.calNum = cal.calNum + data;
                            }),
                        data: const ["4", "5", "6", "-"]),
                    DataButton(
                        onPress: (data) => setState(() {
                              cal.calNum = cal.calNum + data;
                            }),
                        data: const ["1", "2", "3", "+"]),
                    DataButton1(
                        onPress: (data) => setState(() {
                              cal.calNum = cal.calNum + data;
                            }),
                        data: const ["0", ".", "="]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget onPressed(String data) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: const Color.fromARGB(85, 182, 169, 169),
    ),
    child: Text(
      data,
    ),
  );
}
