
import 'package:osta_app_delivery/utils/constants/exports.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupState(0));


  final PageController pageController = PageController();

  // Functions
  void updatePageIndicator(int index) {
    emit(SignupState(index));
  }

  void dotNavigationClick(int index) {
    emit(SignupState(index));
    pageController.jumpTo(index.toDouble());
  }

  void nextPageInSignup({required BuildContext context}) {
    final currentState = state;
    if (currentState.currentPageIndex == 1) {
      context.pushNamed(ORoutesName.loginRoute);
      // context.pushNamed(ORoutesName.loginRoute);
    } else {
      final nextPage = currentState.currentPageIndex + 1;
      pageController.jumpToPage(nextPage);
      emit(SignupState(nextPage));
    }
  }

}
