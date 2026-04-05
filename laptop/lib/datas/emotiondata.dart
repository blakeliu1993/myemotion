import 'package:emotion_laptop/datas/basicdata.dart';

class EmotionData extends BasicData {
  int? _emotionValue; //情绪值，范围为0-100
  int? _heartRate; //心率
  int? _sleepQuality; //睡眠质量
  int? _exerciseAmount; //运动量
  EmotionCategory? _emotionCategory; //情绪分类（愤怒，忧郁，平静等）

  EmotionData(super.timestamp);

  EmotionData.withValues(
    super.timestamp,
    int? emotionValue,
    int? heartRate,
    int? sleepQuality,
    int? exerciseAmount,
    EmotionCategory? emotionCategory,
  ) {
    this.emotionValue = emotionValue;
    this.heartRate = heartRate;
    this.sleepQuality = sleepQuality;
    this.exerciseAmount = exerciseAmount;
    this.emotionCategory = emotionCategory;
  }

  // Getter 和 Setter 方法
  int? get emotionValue => _emotionValue;
  set emotionValue(int? value) {
    if (value != null && (value < 0 || value > 100)) {
      throw ArgumentError('情绪值必须在0-100之间');
    }
    _emotionValue = value;
  }

  int? get heartRate => _heartRate;
  set heartRate(int? value) {
    if (value != null && value < 0) {
      throw ArgumentError('心率必须为非负数');
    }
    if (value != null && value > 220) {
      throw ArgumentError('心率过高，可能不合理');
    }
    _heartRate = value;
  }

  int? get sleepQuality => _sleepQuality;
  set sleepQuality(int? value) {
    if (value != null && (value < 0 || value > 100)) {
      throw ArgumentError('睡眠质量必须在0-100之间');
    }
    _sleepQuality = value;
  }

  int? get exerciseAmount => _exerciseAmount;
  set exerciseAmount(int? value) {
    if (value != null && value < 0) {
      throw ArgumentError('运动量必须为非负数');
    }
    _exerciseAmount = value;
  }

  set emotionCategory(EmotionCategory? value) {
    _emotionCategory = value;
  }
}

/*
 * 愉悦 Joy（正效价，中高唤醒）
信任 Trust（正效价，低中唤醒）
期待 Anticipation（偏正，中高唤醒）
惊讶 Surprise（中性偏正/偏负，高唤醒）
悲伤 Sadness（负效价，低唤醒）
恐惧 Fear（负效价，高唤醒）
愤怒 Anger（负效价，高唤醒）
厌恶 Disgust（负效价，中高唤醒）
平静/中性 Calm-Neutral（中性，低唤醒）
 */
enum EmotionCategory {
  joy,
  trust,
  anticipation,
  surprise,
  sadness,
  fear,
  anger,
  disgust,
  calmNeutral,
}

Map<EmotionCategory, String> emotionCategoryNames = {
  EmotionCategory.joy: '愉悦',
  EmotionCategory.trust: '信任',
  EmotionCategory.anticipation: '期待',
  EmotionCategory.surprise: '惊讶',
  EmotionCategory.sadness: '悲伤',
  EmotionCategory.fear: '恐惧',
  EmotionCategory.anger: '愤怒',
  EmotionCategory.disgust: '厌恶',
  EmotionCategory.calmNeutral: '平静/中性',
};
