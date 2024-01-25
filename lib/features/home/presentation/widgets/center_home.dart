import 'package:flutter/cupertino.dart';
import 'package:osta_app_delivery/features/home/presentation/widgets/custom_container_gold_level.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class CenterHome extends StatelessWidget {
   CenterHome({Key? key,required this.isgold}) : super(key: key);
     bool isgold=true;
  @override
  Widget build(BuildContext context) {
    return Stack(
     children: [
       Container(
         height: MediaQuery.of(context).size.height/2.5,
            width:  MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
             border: Border.all(width: 1.w,color: OColors.grey2)
         ),

       ),
       CustomContainerGoldLevel(isgold: true,)

     ],
    );
  }
}
