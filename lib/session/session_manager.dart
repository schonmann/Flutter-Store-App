import 'package:my_store/model/user.dart';

class SessionManager {

  User getCurrentUser() {
    var billingInfo = new UserBillingInfo.def();

    return new User(
      "Rick Sanchez",
      "wubalubadubdub@g32.com",
      "**********",
      new UserBillingInfo(
          "20561-098",
          "St. Patrick Avenue",
          "1049",
          "Apt. 104",
          new List<String>()),
      "https://static1.squarespace.com/"
          "static/528252b7e4b00150d03a4"
          "848/59a2354eebbd1a0623e0cefe"
          "/59a2359f6a49631dd5192339/15"
          "03802789674/RickAndMorty_Ric"
          "kHappy1500.png?format=300w",
    );
  }

  static final SessionManager _instance = new SessionManager._internal();

  factory SessionManager() {
    return _instance;
  }

  SessionManager._internal();
}
