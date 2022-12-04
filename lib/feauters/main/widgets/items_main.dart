import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemMain extends StatelessWidget {
  const ItemMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Image.asset('assets/images/doctor.png'),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Text(
              'My profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text('Dr. Jon Doe'),
          ],
        ),
      ],
    ));
  }
}
