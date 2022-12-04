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
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text(
                            'Log out',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          content: Column(
                            children: [
                              const Text(
                                'Are you sure you want to log out from the console?',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Yes'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ));
              },
              child: Image.asset('assets/images/btn_logout.png'),
            ),
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
              const ItemsContainer(
                title: 'Patient list for today',
              ),
              const ItemsContainer(
                title: 'Tomorrow',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
