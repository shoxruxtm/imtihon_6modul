
String password = "";

String? validateName(String? value) {
  if (value != null && value.length < 2) {
    return "Invalid name";
  }

  return null;
}

String? validateEmail(String? value) {
  if (value != null &&
      !RegExp(r"^[a-zA-Z][a-zA-Z0-9]*@[a-zA-Z0-9]+\.[a-zA-Z]{2,6}$")
          .hasMatch(value)) {
    return "Invalid email address!";
  }

  return null;
}

String? validatePassword(String? value) {
  if (value != null && !RegExp(r".{8,}").hasMatch(value)) {
    return "Password is too short, it must be at least 8 characters";
  }

  if (value != null && value.contains(" ")) {
    return "Password shouldn't have space";
  }

  if (value != null && !RegExp(r"\d").hasMatch(value)) {
    return "Password must have at least one number";
  }

  if (value != null && !RegExp(r"[a-z]").hasMatch(value)) {
    return "Password must have at least one letter";
  }

  if (value != null && !RegExp(r"[A-Z]").hasMatch(value)) {
    return "Password must have at least one Capital letter";
  }

  password = value ?? "";

  return null;
}


