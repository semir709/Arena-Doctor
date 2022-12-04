import 'package:arena/feauters/main/widgets/items_main.dart';
import 'package:flutter/cupertino.dart';

class ItemsContainer extends StatelessWidget {
  final String title;
  const ItemsContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        ItemMain(),
        SizedBox(
          height: 10,
        ),
        ItemMain(),
        SizedBox(
          height: 10,
        ),
        ItemMain(),
        SizedBox(
          height: 10,
        ),
        ItemMain(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
