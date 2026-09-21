import 'package:eshop_project/core/cubit/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/cubit/theme/theme_cubic.dart';

class settings extends StatefulWidget {
  settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.push("/products");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              children: [
                Text(
                  "Profile Settings",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ],
            ), // Profile Settings
            Row(
              children: [Text("Edit Profile", style: TextStyle(fontSize: 16))],
            ), // Edit Profile
            Row(
              children: [
                Text("Change Password", style: TextStyle(fontSize: 16)),
              ],
            ), // Change Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Send Notifications", style: TextStyle(fontSize: 16)),
                Switch(
                  value: _notificationsEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      _notificationsEnabled = value;
                    });
                  },
                ),
              ],
            ), // Send Notifications
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Background", style: TextStyle(fontSize: 16)),
                BlocBuilder<ThemeCubic, ThemeState>(
                  builder: (context, state) {
                    return Switch(
                      value: state.isDark,
                      onChanged: (isDark) {
                        context.read<ThemeCubic>().toggleTheme();
                      },
                    );
                  },
                ),
              ],
            ),
            // Dark/Light Mode
            const Spacer(),
            Padding(
            padding:const EdgeInsets.all(20),
              child:SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      context.go('/login');
                    },
                  child: const Text('Log out'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}