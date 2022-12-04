import 'package:arena/feauters/main/widgets/items_container.dart';
import 'package:arena/feauters/main/widgets/items_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
            Image.asset('assets/images/btn_logout.png'),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: const [
                  ItemMain(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              ItemsContainer(
                title: 'Patient list for today',
              ),
              ItemsContainer(
                title: 'Tomorrow',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
