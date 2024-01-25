

import 'package:osta_app_delivery/common/styles/spacing_styles.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class SignUpFormPage extends StatelessWidget {
  const SignUpFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: OSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Make Text In Header
            Text("Let's create your account",style: Theme.of(context).textTheme.headlineMedium,),
            /// Make Space
            SizedBox(height: OSizes.defaultSpace),
            /// SignUp Form
            SignUpForm()


          ],
        ),
      ),
    );
  }
}
