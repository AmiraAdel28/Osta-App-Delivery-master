import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osta_app_delivery/utils/constants/exports.dart';

class CustomContainerGoldLevel extends StatelessWidget {
   CustomContainerGoldLevel({Key? key,required this.isgold}) : super(key: key);
      bool isgold=true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: OSizes.heightcontainer,
            width: OSizes.widthcontainer,
            decoration: BoxDecoration(
                color:isgold==true?OColors.gold:OColors.silver,
                borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft:  Radius.circular(8),bottomRight:  Radius.circular(8))
            ),
            child: Center(child: Text("500",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),),
          ),
          SizedBox(width: OSizes.spaceBtwItemcontainer),
          Container(
            height: OSizes.heightcontainer,
            width: OSizes.widthcontainer,
            decoration: BoxDecoration(
                color: isgold==true?OColors.gold:OColors.silver,
                borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft:  Radius.circular(8),bottomLeft:  Radius.circular(8))
            ),
            child: Center(child: Text(isgold ==true ?"Gold level":"Silver level",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),),
          ),
        ],
      ),
    );
  }
}
