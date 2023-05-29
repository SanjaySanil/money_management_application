import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_management_app/consts/color_const.dart';
import 'package:money_management_app/consts/size_const.dart';
import 'package:money_management_app/consts/text_const.dart';
import 'package:money_management_app/controller/add_new_entry_controller/add_new_entry_controller.dart';
import 'package:money_management_app/views/pages/add_new_entry/widgets/entry_box.dart';
import 'package:provider/provider.dart';

class AddNewEntry extends StatelessWidget {
  const AddNewEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          TTextConst.addTransactions,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(TColorConst.primaryColor),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(TSizeCont.mainPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Title:",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const EntryBox(),
              const Text(
                "Category:",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                ),
                child: Consumer<AddNewEntryController>(
                  builder: (context, value, child) => Column(
                    children: [
                      CategoryButton(
                        value: 1,
                        groupValue: value.radioValue,
                        text: "Entertainment",
                        color: Colors.pink,
                        onChanged: (value) {
                          Provider.of<AddNewEntryController>(context,
                                  listen: false)
                              .onValueChange(value!);
                        },
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                      CategoryButton(
                        value: 2,
                        groupValue: value.radioValue,
                        text: "Social & LifeStyle",
                        color: Colors.green,
                        onChanged: (value) {
                          Provider.of<AddNewEntryController>(context,
                                  listen: false)
                              .onValueChange(value!);
                        },
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                      CategoryButton(
                        groupValue: value.radioValue,
                        value: 3,
                        text: "Beauty & Health",
                        color: Colors.blue,
                        onChanged: (value) {
                          Provider.of<AddNewEntryController>(context,
                                  listen: false)
                              .onValueChange(value!);
                        },
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey.shade300,
                      ),
                      CategoryButton(
                        groupValue: value.radioValue,
                        value: 4,
                        text: "Other",
                        color: Colors.orange,
                        onChanged: (value) {
                          Provider.of<AddNewEntryController>(context,
                                  listen: false)
                              .onValueChange(value!);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Amount:",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const EntryBox(),
              const SizedBox(height: 20),
              const Text(
                "Type:",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Consumer<AddNewEntryController>(
                builder: (context, value, child) => CategoryButton(
                  color: Colors.green,
                  text: "Income",
                  value:1,
                  groupValue:value.typeValue,
                  onChanged:(index){
                    value.typeChanged(index!);
                  },
                ),
              ),
              Consumer<AddNewEntryController>(
                builder: (context, value, child) => CategoryButton(
                  color: Colors.red,
                  text: "Expense",
                  value: 2,
                  groupValue: value.typeValue,
                  onChanged: (index) {
                    value.typeChanged(index!);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(TColorConst.primaryColor),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.color,
    required this.text,
    this.onChanged,
    required this.value,
    required this.groupValue,
  }) : super(key: key);
  final Color color;
  final String text;
  final void Function(int?)? onChanged;
  final int value;
  final int groupValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .04,
              width: MediaQuery.of(context).size.width * .02,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: color),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ],
        ),
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: const Color(TColorConst.primaryColor),
        ),
      ],
    );
  }
}
