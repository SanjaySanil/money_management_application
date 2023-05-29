import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_management_app/consts/color_const.dart';
import 'package:money_management_app/consts/image_const.dart';
import 'package:money_management_app/consts/size_const.dart';
import 'package:money_management_app/controller/home_page_controller/home_page_controller.dart';
import 'package:money_management_app/routes/routes.dart';
import 'package:money_management_app/views/pages/home_page/widgets/add_details/add_details.dart';
import 'package:money_management_app/views/pages/home_page/widgets/app_bar.dart';
import 'package:money_management_app/views/pages/home_page/widgets/balance_info_sheet.dart';
import 'package:money_management_app/views/pages/home_page/widgets/settings/settings.dart';
import 'package:money_management_app/views/pages/home_page/widgets/transaction_details/transactions_details.dart';
import 'package:money_management_app/views/pages/home_page/widgets/transaction_section/transaction_section.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list=[
      SafeArea(
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
      Container(
        child:TransactionDetails(),
      ),
      Container(
        child:AddDetails(),
      ),
      Container(child:Settings(),),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(TColorConst.primaryColor),
        onPressed: () {
          context.push(TRoutes.ADDNEWENTRY);
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.recycling,
          Icons.monetization_on,
          Icons.settings
        ],
        activeIndex: Provider.of<HomePageController>(context).currentIndex,
        gapLocation: GapLocation.center,
        backgroundColor: const Color(TColorConst.primaryColor),
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeColor: Colors.white,

        onTap: (index) {
          Provider.of<HomePageController>(context, listen: false)
              .onTapped(index, context);
        },
      ),
      body:list[Provider.of<HomePageController>(context).currentIndex],
    );
  }
}
