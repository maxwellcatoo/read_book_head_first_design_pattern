import 'cooker.dart';

class Order {
  Cooker cooker;

  Order(this.cooker);

  execute() {
    cooker.makeVegetable();
  }
}