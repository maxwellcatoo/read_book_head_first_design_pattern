

import 'buttons.dart';
import 'commands.dart';
import 'products.dart';

void main() {

  final remoteCtrl = SimpleRemoteControl();

  final light = Light();
  remoteCtrl.setCommand(LightOnCommand(light));

  remoteCtrl.click();

}