import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Locale> supportedLocales = [Locale("zh", "CN"), Locale("en", "US")];

class AppSetting {
  Locale locale;

  AppSetting({required this.locale});
}

class AppSettingNotifier extends Notifier<AppSetting> {
  @override
  AppSetting build() {
    return AppSetting(locale: supportedLocales[0]);
  }

  void setLocale(Locale newLocale) {
    state = AppSetting(locale: newLocale);
  }

  Locale get locale => state.locale;
}

final globalLocaleProvider = NotifierProvider<AppSettingNotifier, AppSetting>(
  () => AppSettingNotifier(),
);
