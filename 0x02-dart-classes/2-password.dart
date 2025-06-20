class Password {
  String password = "";

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }

  bool isValid() {
    if (this.password.length >= 8 &&
        this.password.length <= 16 &&
        this.password.contains(RegExp(r'[a-zA-Z]+')) &&
        this.password.contains(RegExp(r'\d+'))) {
      return true;
    }
    return false;
  }
}
