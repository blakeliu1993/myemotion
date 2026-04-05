import 'dart:io';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';

enum LogLevel { debug, info, warning, error }

class CustomLogger {
  static final CustomLogger _instance = CustomLogger._();
  factory CustomLogger() => _instance;
  CustomLogger._();

  File? _logFile;
  bool _enableEdit = true;
  bool _enableConsole = true;

  Future<void> init(String logDir) async {
    final dir = Directory(logDir);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }

    final date = DateTime.now().toString().split(' ')[0];
    _logFile = File('$logDir/app_$date.log');
  }

  void _log(LogLevel level, String message, {String? tag}) {
    final timeStamp = DateTime.now().toIso8601String();
    final levelStr = level.name.toUpperCase().padRight(7);
    final tagStr = tag != null ? '[$tag]' : '';
    final logLine = '[$timeStamp] $levelStr $tagStr$message';

    if (_enableConsole) {
      if (level == LogLevel.error) {
        developer.log(message, name: tag ?? 'APP', level: 1000);
      } else {
        debugPrint(logLine);
      }
    }
  }
}
