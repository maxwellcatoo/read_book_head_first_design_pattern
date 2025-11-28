import 'commands.dart';

abstract class CtrlButton {
  onclick();
}

// 客户（命令触发者）类，存储命令属性和设置命令方法，以及触发方法
// 触发方法调用通用命令的暴露方法
class SimpleRemoteControl {
  Command? command;

  setCommand(Command c) {
    command = c;
  }

  click() {
    command?.execute();
  }
}