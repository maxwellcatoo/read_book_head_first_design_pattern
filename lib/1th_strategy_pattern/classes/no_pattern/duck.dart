/// 鸭子基类
abstract class Duck {
  quack(){
    print("鸭子呱呱叫");
  }

  swim(){
    print("鸭子游呀游");
  }

  fly() {
    print("鸭子飞呀鸭子飞");
  }

  display();
}

/// 绿头鸭
class MallardDuck extends Duck {
  @override
  display() {
    print("有一个绿色的头");
  }
}

/// 红头鸭
class RedheadDuck extends Duck {
  @override
  display() {
    print("有一个红色的头");
  }
}