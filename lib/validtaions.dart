// 1) Password
class PasswordValidator
{
  final RegExp pattern = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$'
  );

  String? validate(String? value)
  {
    // Step 1: check if user typed nothing
    if (value == null || value.isEmpty)
    {
      return 'Please enter a password';
    }

    // Step 2: check if it matches our pattern (all the rules above)
    if (!pattern.hasMatch(value))
    {
      return 'Password must be 8+ characters and include uppercase, '
          'lowercase, a number, and a special character';
    }

    // Step 3: if we reach here, everything is fine
    return null;
  }
}

// 2) EMAIL
class EmailValidator
{
  final RegExp pattern = RegExp(r'^[\w.]+@[\w.]+\.\w+$');

  String? validate(String? value)
  {
    if (value == null || value.isEmpty)
    {
      return 'Please enter an email';
    }

    if (!pattern.hasMatch(value))
    {
      return 'Please enter a valid email (example: name@mail.com)';
    }

    return null;
  }
}

// 3) PHONE NUMBER
class PhoneValidator
{
  final RegExp pattern = RegExp(r'^\d{8,15}$');

  String? validate(String? value)
  {
    if (value == null || value.isEmpty)
    {
      return 'Please enter a phone number';
    }

    if (!pattern.hasMatch(value))
    {
      return 'Phone number must be 8 to 15 digits';
    }

    return null;
  }
}
