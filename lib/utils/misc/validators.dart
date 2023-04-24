String? validateName(String? name) {
  if (name == null || name.isEmpty) {
    return 'name required!';
  }
}

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'email address required!';
  } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
      .hasMatch(email)) {
    return 'invalid email address!';
  }
  return null;
}

String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return 'password required!';
  } else if (!RegExp(r"/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W_]).{8,}$/")
      .hasMatch(password)) {
    return 'password ust have at least 8 characters or more one uppercase and one digit with at least one special character.';
  }

  return null;
}
