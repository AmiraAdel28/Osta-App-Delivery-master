import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osta_app_delivery/features/home/presentation/widgets/center_home.dart';
import 'package:osta_app_delivery/features/home/presentation/widgets/floating_action_button_in_home.dart';

import '../../../utils/constants/exports.dart';



class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        showBackArrow: false,
        leadingWidget: IconButton(onPressed: () {}, icon: Badge.count(count: 0, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: const Icon(Iconsax.notification)), color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          Icon(Iconsax.location, size: 23.sp, color: OColors.white),
          SizedBox(width: OSizes.spaceBetweenIcon),
          Text('Home', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: OColors.white)),
          SizedBox(width: OSizes.sm),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(OSizes.padding),
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// Make Space
              SizedBox(height: OSizes.defaultSpace,),

              /// Text Form Field Fo Offers
              CustomOfferTextFormFieldInHome(textEditingController: textEditingController,),

              /// Make Space
              SizedBox(height: OSizes.defaultSpace,),

              /// Text Form Field Fo My scheduled orders/Current orders
              CustomTextFormFieldInHome(),
              /// Make Space
              SizedBox(height: OSizes.defaultSpace,),

              CenterHome(isgold: true,),
            ],
          ),
        ),
      ),
      /// Make Floating Action Button in center

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      /// Floating Action Button
      floatingActionButton: FloatingActionButtonInHome(),
    );
  }
}
