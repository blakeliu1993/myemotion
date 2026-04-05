import 'package:emotion_laptop/common/custom_widgets.dart';
import 'package:emotion_laptop/l10n/app_localizations.dart';
import 'package:emotion_laptop/pages/home/normal_set.dart';
import 'package:flutter/material.dart';

/// 首页主要负责主界面和导航界面的展现
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations lo = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(lo.home_title_label),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const SetPage()));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(child: Column(children: [Text("Column text")])),
      drawer: CustomDrawer(),
    );
  }
}
