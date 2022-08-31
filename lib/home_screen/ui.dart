import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/data.dart';
import 'package:flutter_application_1/src/data_first_line.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: TransmissionData(
        numCal: '0',
        child: Scaffold(
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
                            margin:
                                const EdgeInsets.only(top: 130, right: 30.0),
                            child: NewWidget(),
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
                          thickness: 1,
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
                      DataButton1(["AC", "+", "%", "/"]),
                      DataButton(["7", "8", "9", "*"]),
                      DataButton(["4", "5", "6", "-"]),
                      DataButton(["1", "2", "3", "+"]),
                      DataButton1(["0", ".", "="]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${TransmissionData.of(context)!.numCal}',
      style: const TextStyle(fontSize: 25),
    );
  }
}
