
import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class CustomTextFormFieldInHome extends StatelessWidget {
  CustomTextFormFieldInHome({Key? key,}) : super(key: key);

  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            textAlign: TextAlign.center,
            controller: textEditingController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Row(
                children: [
                  Text("My scheduled orders",style: TextStyle(color: OColors.grey2)),
                ],
              ),

            ),
          ),
        ),
        SizedBox(width: OSizes.space,),
        Expanded(
          child: TextFormField(
            textAlign: TextAlign.center,
            controller: textEditingController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text("Current orders",style: TextStyle(color: OColors.grey2),),

            ),
          ),
        ),
      ],
    );
  }
}
