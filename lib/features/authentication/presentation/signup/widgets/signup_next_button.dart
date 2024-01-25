import 'package:osta_app_delivery/features/authentication/managers/onboarding_cubit/onboarding_cubit.dart';
import 'package:osta_app_delivery/features/authentication/managers/signup_cubit/signup_cubit.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class SignUpNextButton extends StatelessWidget {
  const SignUpNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>();
    final dark = OHelperFunctions.isDarkMode(context);

    return Positioned(
      right: OSizes.defaultSpace,
      bottom: ODeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          backgroundColor: dark ? OColors.primary : OColors.primary,
          fixedSize: Size(100.w, 62.h),
        ),
        onPressed: () => cubit.nextPageInSignup(context: context),
        child: Text("Next"),
      ),
    );
  }
}