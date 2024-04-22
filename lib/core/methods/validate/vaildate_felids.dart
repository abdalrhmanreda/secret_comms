import 'package:flutter/cupertino.dart';

class AppFunctions {
  static bool isEmailValid(String email) {
    if (email.contains('@') && email.contains('.') && email.endsWith('.com')) {
      return true;
    } else {
      return false;
    }
  }

  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Expiry date is required';
    }

    // Validate if the input matches the format MM/YY
    if (!RegExp(r'^\d{0,2}/?\d{0,2}$').hasMatch(value)) {
      return 'Invalid expiry date format';
    }

    // Extract month and year from the input
    final parts = value.split('/');
    final month = int.tryParse(parts[0]) ?? 0;
    final year = int.tryParse(parts[1]) ?? 0;

    // Validate month (1-12) and year (0-99)
    if (month < 1 || month > 12 || year < 0 || year > 99) {
      return 'Invalid expiry date';
    }

    return null;
  }

  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return 'CVV is required';
    }

    // Validate if the input contains exactly 3 digits
    if (!RegExp(r'^\d{3}$').hasMatch(value)) {
      return 'CVV must be 3 digits';
    }

    return null;
  }

  static void formatExpiryDate(TextEditingController controller, String value) {
    if (value.length == 2 && !value.endsWith('/')) {
      controller.text = '$value/';
    } else if (value.length > 5) {
      controller.text = value.substring(0, 5);
    } else {
      controller.text = value;
    }
  }

  static String removeSubstrings(String address) {
    List<String> substringsToRemove = ["Governorate"];
    for (String substring in substringsToRemove) {
      address = address.replaceAll(substring, '').trim();
    }
    return address;
  }
}
