import 'package:osta_app_delivery/utils/constants/exports.dart';

class FloatingActionButtonInHome extends StatefulWidget {
  const FloatingActionButtonInHome({Key? key,}) : super(key: key);

  @override
  State<FloatingActionButtonInHome> createState() => _FloatingActionButtonInHomeState();
}

class _FloatingActionButtonInHomeState extends State<FloatingActionButtonInHome> {
  bool isgold=true;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: isgold==true?Color(0xff30C7D1):Color(0xffB23630),
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0.r)),
      onPressed: (){
        setState(() {
          isgold=!isgold;
        });
      },
    child: Center(
      child: Text("Start",style: TextStyle(color: Colors.white),),
    ),
    );
  }
}
