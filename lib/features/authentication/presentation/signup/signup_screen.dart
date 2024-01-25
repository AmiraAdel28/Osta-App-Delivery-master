
import 'package:osta_app_delivery/utils/constants/exports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Builder(
      builder: (context) {
        final cubit = context.read<SignupCubit>();
        return Scaffold(
          appBar: OAppBar(
            showBackArrow: true,
            actions: [
              SvgPicture.asset(OImages.appIcon2, width: OSizes.productImageSize, color: dark ? Colors.blueGrey : null, height: OSizes.buttonHeight * 1.6),
              SizedBox(width: OSizes.defaultSpace),
            ],
          ),
          body: Stack(
            children: [

              /// Horizontal Scrollable Page
              PageView(
                controller: cubit.pageController,
                onPageChanged: cubit.updatePageIndicator,
                children:  [

                  SignUpFormPage(),

                  NextPageInSignUp(),




                ],
              ),

              /// Dot Navigation SmoothPageIndicator
              const SignUpDotNavigation(),

              /// Circular Button
              const SignUpNextButton(),
            ],
          ),
          // SingleChildScrollView(
          //   child: Padding(
          //     padding: OSpacingStyle.paddingWithAppBarHeight,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         /// Make Text In Header
          //         Text("Let's create your account",style: Theme.of(context).textTheme.headlineMedium,),
          //         /// Make Space
          //         SizedBox(height: OSizes.defaultSpace),
          //         /// SignUp Form
          //         SignUpForm()
          //
          //
          //       ],
          //     ),
          //   ),
          // ),
        );
      }
    );
  }
}
