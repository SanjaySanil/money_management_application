import 'package:flutter/material.dart';
import 'package:money_management_app/consts/text_const.dart';
import 'package:money_management_app/views/pages/home_page/widgets/transaction_section/widgets/transaction_card.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 30,
        ),
        Text(
          TTextConst.transactions,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TransactionCard(),
      ],
    );
  }
}
