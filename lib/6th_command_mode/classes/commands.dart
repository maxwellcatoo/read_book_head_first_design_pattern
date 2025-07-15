import 'products.dart';

abstract class Command {
  void execute();
}

// 命令，存储对执行者的引用，通过引用，执行一系列的动作。
// 执行系列动作，封装在一个统一的方法里，供客户调用
class LightOnCommand extends Command {
  Light light;
  LightOnCommand(this.light);

  @override
  void execute() {
    light.on();
  }
}