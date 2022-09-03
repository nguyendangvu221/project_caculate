import 'package:math_expressions/math_expressions.dart';

class Calculate {
  String calNum = "";
  String calResult = "";
  void addNum(String num) {
    calNum += num;
  }

  void calculate() {
    calNum = calNum.replaceAll("%", "/100");
    calNum = calNum.replaceAll('×', '*');
    calNum = calNum.replaceAll('÷', '/');
    Parser p = Parser();
    Expression exp = p.parse(calNum);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    calResult = eval.toString();
  }

  void delNum() {
    calNum = calNum.substring(0, calNum.length - 1);
  }

  void clearNum() {
    calNum = "";
  }
}
