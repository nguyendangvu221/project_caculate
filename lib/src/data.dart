import 'package:flutter/material.dart';

class DataButton extends StatefulWidget {
  DataButton(this.data, {Key? key}) : super(key: key);
  List<String> data = [];

  @override
  State<DataButton> createState() => _DataButtonState();
}

class _DataButtonState extends State<DataButton> {
  void addNum(String addData) {
    setState(() {
      TransmissionData.of(context)!.numCal += addData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: (() {
            addNum(widget.data[0]);
          }),
          child: Text(
            widget.data[0],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        TextButton(
          onPressed: (() {}),
          child: Text(
            widget.data[1],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        TextButton(
          onPressed: (() {}),
          child: Text(
            widget.data[2],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        TextButton(
          onPressed: (() {}),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            backgroundColor: Color.fromARGB(85, 182, 169, 169),
          ),
          child: Text(
            widget.data[3],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }
}

class TransmissionData extends InheritedWidget {
   String numCal = "";
  TransmissionData({super.key, required this.child,required this.numCal}) : super(child: child);
  final Widget child;
  static TransmissionData? of(BuildContext context) {
    final TransmissionData? result =
        context.dependOnInheritedWidgetOfExactType<TransmissionData>();
    assert(result != null, throw 'No TransmissionData found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TransmissionData oldWidget) {
    return true;
  }
}
