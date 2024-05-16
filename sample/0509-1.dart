<<<<<<< HEAD
/*
class Surface {
  Function? onTouch;

  void touch(double x, double y) {
    if (onTouch != null) {
      onTouch!(x, y);
    }
  }
}

void main() {
  Surface surface = Surface();

  surface.onTouch = (double x, double y) {
    print('x: $x, y: $y');
  };

  surface.touch(202.3, 134.0);
}
*/
/*
// 定義 Surface 類別
class Surface {
  // 定義回調函數 onTouch
  Function(double, double)? onTouch;

  // 定義 touch 方法
  void touch(double x, double y) {
    if (onTouch != null) {
      onTouch!(x, y);
    }
  }
}

// main 函數
void main() {
  // 創建 Surface 實例
  Surface surface = Surface();

  // 傳入匿名函數作為 onTouch 回調
  surface.onTouch = (double x, double y) {
    print('x: $x, y: $y');
  };

  // 調用 touch 方法
  surface.touch(202.3, 134.0);
}
*/
class Surface {
  Function? onTouch;

  void touch(double x, double y) {
    onTouch!(x, y);
  }
}

void main() {
  Surface surface = Surface();

  surface.onTouch = (double x, double y) {
    print('x: $x, y: $y');
  };

  surface.touch(202.3, 134.0);
}
=======
﻿class Surface {
  Function? onTouch= (double x, double y) {
    print('x: $x, y: $y');
  };

  void touch(double x, double y) {
    onTouch!(x, y);
  }
}

void main() {
  Surface surface = Surface();
  surface.touch(202.3, 134.0);
}
>>>>>>> c075f8edecb2ce7b032626ba3d846a0b7e8824d2
