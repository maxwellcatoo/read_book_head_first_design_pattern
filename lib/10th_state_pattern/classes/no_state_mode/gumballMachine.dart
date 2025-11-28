import 'dart:math';

class GumballMachine {
  static const int SOLD_OUT = 0;
  static const int NO_QUARTER = 1;
  static const int HAS_QUARTER = 2;
  static const int SOLD = 3;

  getStateDesc(int state) {
    if(state == 0) {
      return "SOLD_OUT";
    } else if (state == 1) {
      return "NO_QUARTER";
    } else if (state == 2) {
      return "HAS_QUARTER";
    } else if (state == 3) {
      return "SOLD";
    }
  }

  int state = SOLD_OUT;
  int count = 0;

  GumballMachine(this.count) {
    if (count > 0) {
      state = NO_QUARTER;
    }
  }

  var random = Random();
  bool doubleGumball() {
    return random.nextInt(10) == 0;
  }

  // 投入硬币
  insertQuarter() {
    if (state == HAS_QUARTER) {
      print("不能投入硬币");
    } else if (state == NO_QUARTER) {
      state = HAS_QUARTER;
      print("投入硬币成功");
    } else if (state == SOLD_OUT) {
      print("已售罄，无法投入硬币");
    } else if (state == SOLD) {
      print("请等待出货完成后再投入硬币");
    }
  }

  // 退回硬币
  ejectQuarter() {
    if (state == HAS_QUARTER) {
      state = NO_QUARTER;
      print("退出硬币成功");
    } else if (state == NO_QUARTER) {
      print("没有可退的硬币");
    } else if (state == SOLD) {
      print("正在出货中，没有可退的硬币");
    } else if (state == SOLD_OUT) {
      print("没有可退的硬币");
    }
  }

  // 转动曲柄
  turnCrank() {
    if (state == SOLD) {
      print("已出货");
    } else if (state == NO_QUARTER) {
      print("尚未投币，无法出货");
    } else if (state == SOLD_OUT) {
      print("已售罄，无法出货");
    } else if (state == HAS_QUARTER) {
      state = SOLD;
      print("正在出货，请稍候");
      dispense();
    }
  }

  // 发放糖果
  dispense() {
    if(state == SOLD) {
      print("正在出货");
      count--;
      if(count == 0) {
        state = SOLD_OUT;
        print("糖果已售罄");
      } else {
        if(doubleGumball()) {
          print("中奖了，将再为您出货一次糖果");
          dispense();
          return;
        }
        state = NO_QUARTER;
      }
    } else if (state == NO_QUARTER) {
      print("需要先投币");
    } else if(state == SOLD_OUT) {
      print("已售罄，无法出货");
    } else if(state == HAS_QUARTER) {
      print("请转动曲柄出货");
    }
  }

  @override
  String toString() {
    return "state: ${getStateDesc(state)}   count: $count";
  }
}
