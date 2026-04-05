import 'package:emotion_laptop/common/general_provider.dart';
import 'package:emotion_laptop/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SetPage extends ConsumerStatefulWidget {
  const SetPage({super.key});

  @override
  ConsumerState<SetPage> createState() => _SetPageState();
}

class _SetPageState extends ConsumerState<SetPage> {
  bool _isLongTimeReminderEnabled = false;
  @override
  Widget build(BuildContext context) {
    AppLocalizations lo = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(lo.set_page_title)),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text(lo.set_language_label),
            children: [
              for (var locale in supportedLocales)
                ListTile(
                  title: Text(locale.toString()),
                  onTap: () {
                    ref.read(globalLocaleProvider.notifier).setLocale(locale);
                  },
                ),
            ],
          ),
          ListTile(
            title: Text(lo.set_enable_long_time_reminder_label),
            trailing: Switch.adaptive(
              value: _isLongTimeReminderEnabled,
              onChanged: (bool value) {
                setState(() {
                  _isLongTimeReminderEnabled = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
