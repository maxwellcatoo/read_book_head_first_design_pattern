abstract class Product {
  on();

  off();
}


// 执行者类
class Light extends Product {
  @override
  on() {
    print("=== turn on light ===");
  }

  @override
  off() {
    print("=== turn off light ===");
  }
}