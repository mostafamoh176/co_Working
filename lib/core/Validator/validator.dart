class Validator {
  static String? email(String? value) {
    if (value!.isEmpty)
      return "You Must Enter Your Email Here";
    else if (!value.contains("@")) return "example: example@example.com";
  }

  static String? password(String? value) {
    if (value!.isEmpty)
      return "You Must Enter Your Password";
    else if (value.length < 8) return "Your password must be larger than 8";
  }

  static String? name(String? value) {
    if (value!.isEmpty) {
      return "You Must Enter Your Name";
    }
  }

  static String? phone(String? value) {
    if (value!.isEmpty) {
      return "You Must Enter Your Phone Number";
    }
  }
}
