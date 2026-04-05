class BasicData {
  int timestamp; //unit : us
  int? seq; //数据序列号，方便后续数据分析时进行排序和去重等操作

  BasicData(this.timestamp);
}

/// 键盘数据和鼠标数据的类，包含了事件类型，按键码，坐标等信息。
class KeyboardData extends BasicData {
  int keyCode;
  int? keyPresstimeMs;
  KeyEvent keyEvent;

  KeyboardData(
    super.timestamp,
    this.keyCode,
    this.keyEvent, {
    this.keyPresstimeMs,
  });
}

enum KeyEvent { keyDownEvent, keyUpEvent, keyRepeatEvent }

/// 鼠标数据类，包含了事件类型，坐标等信息。
class MouseData extends BasicData {
  MouseEvent mouseEvent;
  int mouseX;
  int mouseY;
  int? mousePresstimeMs;

  MouseData(
    super.timestamp,
    this.mouseEvent,
    this.mouseX,
    this.mouseY, {
    this.mousePresstimeMs,
  });
}

enum MouseEvent {
  mouseDownEvent,
  mouseUpEvent,
  mouseMoveEvent,
  mouseWheelEvent,
  mouseSideKeyDownEvent,
  mouseSideKeyUpEvent,
  mouseUnknownEvent,
}

/// 冲击数据类，包含了事件类型，冲击强度等信息。
class ShockData extends BasicData {
  ShockEvent shockEvent;
  int shockStrength;

  ShockData(super.timestamp, this.shockEvent, this.shockStrength);
}

enum ShockEvent { shockDetected, shockNotDetected }

/// 呼吸数据类，包含了事件类型，呼吸强度等信息。
class BreathData extends BasicData {
  BreathEvent breathEvent;
  int breathStrength;

  BreathData(super.timestamp, this.breathEvent, this.breathStrength);
}

enum BreathEvent { breathInDetected, breathOutDetected }
