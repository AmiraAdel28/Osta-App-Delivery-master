import 'package:flutter/cupertino.dart';
import 'package:osta_app_delivery/common/styles/spacing_styles.dart';
import 'package:osta_app_delivery/features/authentication/presentation/signup/widgets/custom_container_in_next_signup.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class NextPageInSignUp extends StatelessWidget {
  const NextPageInSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: OSpacingStyle.paddingWithAppBarHeight,

      child: Column(
        children: [
          /// Make Text In Header
          Row(
            children: [
              Text("Let's create your account",style: Theme.of(context).textTheme.headlineMedium,),
            ],
          ),
          /// Make Space
          SizedBox(height: OSizes.imageThumbSize),

          /// Container

          CustomContainerInNextPageInSignUp(text: "Evidence"),
          SizedBox(height: OSizes.defaultSpace,),
          CustomContainerInNextPageInSignUp(text: "Specialization"),
          SizedBox(height: OSizes.defaultSpace,),
          CustomContainerInNextPageInSignUp(text: " Bank account"),
        ],
      ),
    );
  }
}
