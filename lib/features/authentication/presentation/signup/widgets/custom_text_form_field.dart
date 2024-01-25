import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({Key? key,required this.textEditingController,required this.labelText}) : super(key: key);

  TextEditingController textEditingController=TextEditingController();
  String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: OColors.grey2)
      ),
    );
  }
}
