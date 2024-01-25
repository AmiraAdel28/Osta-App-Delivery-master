import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  CustomPasswordTextFormField({Key? key,required this.textEditingController,}) : super(key: key);

  TextEditingController textEditingController=TextEditingController();

  @override
  State<CustomPasswordTextFormField> createState() => _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState extends State<CustomPasswordTextFormField> {
  bool isShowed = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: OSizes.paddingHorizontallyInTextFormField),
      child: TextFormField(
        obscureText: isShowed,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: "password",
          labelStyle: TextStyle(color: OColors.grey2),
          suffixIcon: IconButton(onPressed: () {
          setState(() {
            isShowed = !isShowed;
          });
        }, icon: Icon(isShowed ? Iconsax.eye_slash : Iconsax.eye)),
        ),
      ),
    );
  }
}
