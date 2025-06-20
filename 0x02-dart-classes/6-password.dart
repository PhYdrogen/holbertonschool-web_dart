class Password {
  String _password = "";

  void set password(String? pwd) {
    this._password = pwd ?? "";
  }

  String get password {
    return this._password;
  }

  Password({required String? password}) {
    this._password = password ?? "";
  }

  @override
  String toString() {
    return 'Your Password is: ${this._password}';
  }

  bool isValid() {
    if (this._password.length >= 8 &&
        this._password.length <= 16 &&
        this._password.contains(RegExp(r'[A-Z]+')) &&
        this._password.contains(RegExp(r'[a-z]+')) &&
        this._password.contains(RegExp(r'\d+'))) {
      return true;
    }
    return false;
  }
}
