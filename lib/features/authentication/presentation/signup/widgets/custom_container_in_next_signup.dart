import 'package:flutter/cupertino.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class CustomContainerInNextPageInSignUp extends StatelessWidget {
   CustomContainerInNextPageInSignUp({Key? key,required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: OSizes.appBarHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OSizes.productImageRadius),
        border: Border.all(
          width: 1.2.w,
          color: OColors.grey
        )
      ),
      child: Center(
        child: Text(text,style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 16.sp),),
      ),
    );
  }
}
