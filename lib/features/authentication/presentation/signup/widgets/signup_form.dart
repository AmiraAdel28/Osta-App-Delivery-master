
import 'package:osta_app_delivery/utils/constants/exports.dart';

class SignUpForm extends StatelessWidget {
   SignUpForm({Key? key}) : super(key: key);
TextEditingController firstName=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwSections),
      child: Form(child: Column(
        children: [
          Row(
            children: [
              Expanded(child: CustomTextFormField(textEditingController: firstName, labelText: "First Name")),
              SizedBox(width: OSizes.space,),
              Expanded(child: CustomTextFormField(textEditingController: firstName, labelText: "Last Name")),

            ],
          ),
          SizedBox(height: OSizes.spaceBtwItems,),
          CustomTextFormField(textEditingController: firstName, labelText: "Country"),
          SizedBox(height: OSizes.spaceBtwItems,),
          CustomTextFormField(textEditingController: firstName, labelText: "City"),

          SizedBox(height: OSizes.spaceBtwItems,),
         CustomPasswordTextFormField(textEditingController: firstName,),
          SizedBox(height: OSizes.spaceBtwItems,),
          CustomPasswordTextFormField(textEditingController: firstName,)



        ],

      )),
    );
  }
}
