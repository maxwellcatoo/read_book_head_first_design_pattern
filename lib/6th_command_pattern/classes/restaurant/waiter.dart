import 'order.dart';

class Waiter {
  Order? order;

  setOrder(Order o) {
    order = o;
  }

  takeOrder() {
    order?.execute();
  }
}