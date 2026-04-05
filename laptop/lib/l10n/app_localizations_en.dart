// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_title_label => 'Home';

  @override
  String get date_title_label => 'Data';

  @override
  String get debug_title_label => 'Debug';

  @override
  String get welcome_drawer_label =>
      'Welcome to my app , kindly record your feeling';

  @override
  String get set_page_title => 'General Set Page';

  @override
  String get set_language_label => 'Languages';

  @override
  String get set_enable_long_time_reminder_label => 'Work Long to remind';
}
