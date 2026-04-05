import 'package:emotion_laptop/common/custom_widgets.dart';
import 'package:emotion_laptop/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class DebugMainPage extends StatefulWidget {
  const DebugMainPage({super.key});

  @override
  State<DebugMainPage> createState() => _DebugMainPageState();
}

class _DebugMainPageState extends State<DebugMainPage> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations lo = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(lo.debug_title_label)),
      body: Center(child: Text("Debug main page")),
      drawer: const CustomDrawer(),
    );
  }
}
