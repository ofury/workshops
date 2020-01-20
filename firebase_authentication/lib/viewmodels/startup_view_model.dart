import 'package:firebase_authentication/constants/route_names.dart';
import 'package:firebase_authentication/locator.dart';
import 'package:firebase_authentication/services/authentication_service.dart';
import 'package:firebase_authentication/services/navigation_service.dart';
import 'package:firebase_authentication/viewmodels/base_model.dart';

class StartUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();

    if (hasLoggedInUser) {
      _navigationService.navigateTo(HomeViewRoute);
    } else {
      _navigationService.navigateTo(LoginViewRoute);
    }
  }
}
