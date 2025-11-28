import 'cooker.dart';
import 'order.dart';
import 'waiter.dart';

void main() {
  var waiter = Waiter();
  var cooker = Cooker();
  var order = Order(cooker);

  waiter.setOrder(order);
  waiter.takeOrder();
}