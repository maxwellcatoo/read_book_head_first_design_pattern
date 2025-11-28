import 'package:head_first_design_pattern/1th_strategy_pattern/classes/no_pattern/duck.dart';

void main() {
  noPatternRun();
}

void noPatternRun() {
  Duck duck1 = RedheadDuck();
  duck1.display();
  duck1.fly();
  duck1.swim();
  duck1.quack();
}