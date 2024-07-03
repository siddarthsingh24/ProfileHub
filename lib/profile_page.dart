import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splash/models/profile_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileModel = Provider.of<ProfileModel>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Adjust this as needed
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Your Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Handle back button action here
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  'assets/back.png',
                  width: 7,
                  height: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/rectangle.png',
              width: 375,
              height: 161,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 94,
            left: 120,
            child: Image.asset(
              'assets/profile.png',
              width: 135,
              height: 135,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 312,
                  height: 421,
                  margin: const EdgeInsets.only(top: 20, left: 32),
                  padding: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    ),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/name_icon.png',
                            width: 10.62,
                            height: 8.63,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Your name',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: profileModel.nameController,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/phone_icon.png',
                            width: 10.62,
                            height: 8.63,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Phone no.',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: profileModel.phoneController,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/email_icon.png',
                            width: 10.62,
                            height: 8.63,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: profileModel.emailController,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/password_icon.png',
                            width: 10.62,
                            height: 8.63,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Change password',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: profileModel.passwordController,
                        style: const TextStyle(fontSize: 12),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'assets/confirm.png',
                        width: 288,
                        height: 46,
                      ),
                    ),
                    Positioned(
                      top: 12,
                      left: 129.23,
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF583EF2),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () {
                      profileModel.saveProfile();
                    },
                    child: Image.asset(
                      'assets/save.png',
                      width: 311,
                      height: 46,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
