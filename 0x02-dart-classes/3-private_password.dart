class Password {
  String _password = "";

  Password({required password}) {
    this._password = password;
  }

  @override
  String toString() {
    return 'Your Password is: ${this._password}';
  }

  bool isValid() {
    if (this._password.length >= 8 &&
        this._password.length <= 16 &&
        this._password.contains(RegExp(r'[a-zA-Z]+')) &&
        this._password.contains(RegExp(r'\d+'))) {
      return true;
    }
    return false;
  }
}
