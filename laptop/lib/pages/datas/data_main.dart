import 'package:emotion_laptop/common/custom_widgets.dart';
import 'package:emotion_laptop/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class DataMainPage extends StatefulWidget {
  const DataMainPage({super.key});

  @override
  State<DataMainPage> createState() => _DataMainPageState();
}

class _DataMainPageState extends State<DataMainPage> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations lo = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(lo.date_title_label)),
      body: Center(child: Text("Data main page")),
      drawer: const CustomDrawer(),
    );
  }
}
