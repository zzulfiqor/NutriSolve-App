import 'package:get/get.dart';
import 'package:nutrisolve_app/common/enum/welcoming_page_state_enum.dart';

class WelcomingPageController extends GetxController {
  var welcoming_page_state = welcomingPageState.initial_state.obs;

  void setWelcomingToLoginPageState() {
    this.welcoming_page_state.value = welcomingPageState.login_state;
  }

  void setWelcomingToSignupPageState() {
    this.welcoming_page_state.value = welcomingPageState.register_state;
  }

  void setWelcomingToInitialPageState() {
    this.welcoming_page_state.value = welcomingPageState.initial_state;
  }
}
