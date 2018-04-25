class User {
  String _username;
  String _email;
  String _password;
  UserBillingInfo _billingInfo;
  String _profilePictureUrl;

  User._default();

  User(this._username, this._email, this._password, this._billingInfo,
      this._profilePictureUrl);

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get profilePictureUrl => _profilePictureUrl;

  set profilePictureUrl(String value) {
    _profilePictureUrl = value;
  }

  UserBillingInfo get billingInfo => _billingInfo;

  set billingInfo(UserBillingInfo value) {
    _billingInfo = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }
}

class UserBillingInfo {

  String _zipCode;
  String _address;
  String _number;
  String _complements;
  List<String> _references;

  UserBillingInfo(this._zipCode, this._address, this._number, this._complements,
      this._references);

  UserBillingInfo.def();
}
