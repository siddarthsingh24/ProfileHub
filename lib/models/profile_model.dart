import 'package:flutter/material.dart';

class ProfileModel extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void saveProfile() {
    // Save profile logic here
    print('Profile saved');
  }

  @override
  void dispose() {
    // Clean up controllers
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
