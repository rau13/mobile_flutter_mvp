import 'package:flutter/material.dart';
import 'package:mobile_mvp/widgets/card.dart';
import 'package:mobile_mvp/widgets/menu_bottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BottomMenuForm()),
    );
  }
}
