import 'package:flutter/material.dart';
import 'package:money_management_app/consts/image_const.dart';
import 'package:money_management_app/consts/size_const.dart';
import 'package:money_management_app/consts/text_const.dart';
import 'package:money_management_app/views/pages/home_page/widgets/app_bar.dart';
import 'package:money_management_app/views/pages/home_page/widgets/balance_info_sheet.dart';
import 'package:money_management_app/views/pages/home_page/widgets/transaction_section/transaction_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(TSizeCont.mainPadding),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(TImageConst.bgImage),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BAppBar(),
                BalanceInfoSheet(),
               TransactionSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
