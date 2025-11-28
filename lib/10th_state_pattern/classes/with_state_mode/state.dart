import 'gumball_machine_with_state_mode.dart';

abstract class State {
  // 投入硬币
  insertQuarter();
  // 退出硬币
  ejectQuarter();
  // 转动曲柄
  turnCrank();
  // 发放糖果
  dispense();
}

class SoldState extends State {

  final GumballMachineWithStateMode gumballMachine;
  SoldState(this.gumballMachine);

  @override
  dispense() {
    // TODO: implement dispense
    throw UnimplementedError();
  }

  @override
  ejectQuarter() {
    // TODO: implement ejectQuarter
    throw UnimplementedError();
  }

  @override
  insertQuarter() {
    // TODO: implement insertQuarter
    throw UnimplementedError();
  }

  @override
  turnCrank() {
    // TODO: implement turnCrank
    throw UnimplementedError();
  }

}

class SoldOutState extends State {
  final GumballMachineWithStateMode gumballMachine;
  SoldOutState(this.gumballMachine);

  @override
  dispense() {
    // TODO: implement dispense
    throw UnimplementedError();
  }

  @override
  ejectQuarter() {
    // TODO: implement ejectQuarter
    throw UnimplementedError();
  }

  @override
  insertQuarter() {
    // TODO: implement insertQuarter
    throw UnimplementedError();
  }

  @override
  turnCrank() {
    // TODO: implement turnCrank
    throw UnimplementedError();
  }

}

class NoQuarterState extends State {
  final GumballMachineWithStateMode gumballMachine;
  NoQuarterState(this.gumballMachine);

  @override
  dispense() {
    print("处在不可弹出糖果状态中");
  }

  @override
  ejectQuarter() {
    print("没有硬币被投入，无法弹出硬币");
  }

  @override
  insertQuarter() {
    gumballMachine.setState(gumballMachine.hasQuarterState);
    print("投入硬币成功");
  }

  @override
  turnCrank() {
    print("无法转动曲柄，请投币");
  }
}

class HasQuarterState extends State {
  final GumballMachineWithStateMode gumballMachine;
  HasQuarterState(this.gumballMachine);


  @override
  dispense() {
    print("处在不可弹出糖果状态中");
  }

  @override
  ejectQuarter() {
    gumballMachine.setState(gumballMachine.noQuarterState);
    print("弹出硬币");
  }

  @override
  insertQuarter() {
    print("已投入硬币，正在处理中，不能再次投入");
  }

  @override
  turnCrank() {
    print("弹出糖果中");
    gumballMachine.setState(gumballMachine.soldState);
  }

}

