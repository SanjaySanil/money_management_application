import 'package:flutter/material.dart';
import 'package:money_management_app/consts/color_const.dart';

class EntryBox extends StatelessWidget {
  const EntryBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 2),
      ),
      child: TextFormField(cursorColor:Color(TColorConst.primaryColor),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder:  OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder:  OutlineInputBorder(borderSide: BorderSide.none),
          hintText:"Description",
        ),
      ),
    );
  }
}
