import 'package:flutter/material.dart';
import 'package:money_management_app/consts/text_const.dart';

class BAppBar extends StatelessWidget {
  const BAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TTextConst.appTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 35,color:Colors.white,),
        ),
      ],
    );
  }
}
