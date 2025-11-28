

import 'gumballMachine.dart';

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