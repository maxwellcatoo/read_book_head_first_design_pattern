import 'package:head_first_design_pattern/6th_command_mode/classes/buttons.dart';
import 'package:head_first_design_pattern/6th_command_mode/classes/commands.dart';

import 'products.dart';

void main() {

  final remoteCtrl = SimpleRemoteControl();

  final light = Light();
  remoteCtrl.setCommand(LightOnCommand(light));

  remoteCtrl.click();

}