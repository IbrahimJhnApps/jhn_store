class JValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    //Regular expression for normal email validation
    final emailRedExp = RegExp(r'^[\W-.]+@([\w-]+\.)+[\w-]{2,4}$'); // Corrected Line 9

    if(!emailRedExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) { // Corrected Line 39
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    //Regular expression for phone number validation (assuming 10-digit US number format)
    final phoneRegExp = RegExp(r'^\d{10}S');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10-digits required).';
    }

    return null;

    //Add more custom validators as needed to your specific requirements.
  }

}