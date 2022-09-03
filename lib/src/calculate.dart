
import 'package:math_expressions/math_expressions.dart';
class Calculate {
  String calNum = "";

  void addNum(String num) {
    calNum += num;
  }

  void calculate() {
    String str = calNum.replaceAll("%", "/100");
    Parser p = Parser();
    Expression exp = p.parse(calNum);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    calNum = eval.toString();
  }

  void delNum() {
    calNum = calNum.substring(0, calNum.length - 1);
  }
  void clearNum() {
    calNum = "";
  }
}