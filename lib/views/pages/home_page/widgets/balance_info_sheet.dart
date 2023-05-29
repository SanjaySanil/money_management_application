import 'package:flutter/material.dart';
import 'package:money_management_app/consts/image_const.dart';
import 'package:money_management_app/consts/size_const.dart';
import 'package:money_management_app/consts/text_const.dart';

class BalanceInfoSheet extends StatelessWidget {
  const BalanceInfoSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(TSizeCont.mainPadding),
      height: MediaQuery.of(context).size.height * .2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(0, 1),
              spreadRadius: 2,
              blurRadius: 10)
        ],
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(TImageConst.cover),
        ),
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTextConst.yourBalance,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            "500",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    TTextConst.income,
                    style: TextStyle(color: Colors.green),
                  ),
                  const Text(
                    "1000",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    TTextConst.expense,
                    style: TextStyle(color: Colors.red),
                  ),
                  const Text(
                    "1000",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
