import 'package:head_first_design_pattern/10th_state_mode/classes/with_state_mode/state.dart';

class GumballMachineWithStateMode {
  late State soldOutState;
  late State noQuarterState;
  late State hasQuarterState;
  late State soldState;

  late State _state;
  int count = 0;

  GumballMachineWithStateMode(this.count) {
    soldOutState = SoldOutState(this);
    noQuarterState = NoQuarterState(this);
    hasQuarterState = HasQuarterState(this);
    soldState = SoldOutState(this);

    _state = soldState;
  }

  // 更改状态
  setState(State argState) {
    _state = argState;
  }

  // 投入硬币
  insertQuarter() {
    _state.insertQuarter();
  }

  // 退出硬币
  ejectQuarter() {
    _state.ejectQuarter();
  }

  // 转动曲柄
  turnCrank() {
    _state.turnCrank();
    _state.dispense();
  }

  // 释放糖果
  releaseBall() {
    if(count != 0) {
      count--;
    }
  }


}