
import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class CustomOfferTextFormFieldInHome extends StatelessWidget {
  CustomOfferTextFormFieldInHome({Key? key,required this.textEditingController}) : super(key: key);

  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: textEditingController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(

          label: Center(child: Text("offers",style: Theme.of(context).textTheme.headlineMedium,),),

      ),
    );
  }
}
