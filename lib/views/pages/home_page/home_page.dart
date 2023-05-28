import 'package:flutter/material.dart';
import 'package:money_management_app/consts/size_const.dart';
import 'package:money_management_app/consts/text_const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(TSizeCont.mainPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TTextConst.appTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu, size: 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
