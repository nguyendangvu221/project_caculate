import 'package:flutter/material.dart';

class DataButton extends StatelessWidget {
  DataButton(this.data);
  List<String> data = [];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: (() {}),
          child: Text(
            data[0],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        TextButton(
          onPressed: (() {}),
          child: Text(
            data[1],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        TextButton(
          onPressed: (() {}),
          child: Text(
            data[2],
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
            data[3],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }
}
