import 'package:head_first_design_pattern/10th_state_mode/classes/no_state_mode/gumballMachine.dart';

class GumballMachineTest {
  run() {
    GumballMachine gumballMachine = GumballMachine(5);

    print(gumballMachine);

    gumballMachine.insertQuarter();
    gumballMachine.turnCrank();

    print(gumballMachine);

    gumballMachine.insertQuarter();
    gumballMachine.ejectQuarter();
    gumballMachine.turnCrank();
    
    print(gumballMachine);

    gumballMachine.insertQuarter();
    gumballMachine.turnCrank();
    gumballMachine.insertQuarter();
    gumballMachine.turnCrank();
    gumballMachine.ejectQuarter();

    print(gumballMachine);

    gumballMachine.insertQuarter();
    gumballMachine.insertQuarter();
    gumballMachine.turnCrank();
    gumballMachine.insertQuarter();
    gumballMachine.turnCrank();
    gumballMachine.insertQuarter();
    gumballMachine.turnCrank();

    print(gumballMachine);
  }
}