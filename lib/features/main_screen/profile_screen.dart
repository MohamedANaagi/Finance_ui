import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xfff5f5f5),
              child: IconButton(
                icon: const Icon(Icons.edit_outlined, color: Colors.black87),
                onPressed: () {
                  // TODO: go to edit screen
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          children: [
            const SizedBox(height: 12),

            // Avatar
            const CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/images/d.png'),
              // حط هنا صورتك أو NetworkImage
            ),

            const SizedBox(height: 24),

            // Fields
            const ProfileField(label: 'Full Name', value: 'Mohamed nagi'),
            const ProfileField(label: 'Email', value: 'nmhmd7602@gmail.com'),
            const ProfileField(label: 'Phone Number', value: '+966 1234 56789'),
            const ProfileField(label: 'Address', value: 'Cairo, Egypt'),
          ],
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileField({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
        const SizedBox(height: 12),
        Divider(height: 1, color: Colors.grey.shade300),
        const SizedBox(height: 4),
      ],
    );
  }
}
