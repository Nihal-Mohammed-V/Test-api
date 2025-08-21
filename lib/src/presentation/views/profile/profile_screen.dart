import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  final String user;

  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            CircleAvatar(
              radius: 60,

            ),
            const SizedBox(height: 20),

            Text(
              "name",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(
              'email',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            const SizedBox(height: 30),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.badge, color: Colors.blue),
                      title: const Text("User ID"),
                      subtitle: Text('id'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.email, color: Colors.blue),
                      title: const Text("Email"),
                      subtitle: Text('email'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.person, color: Colors.blue),
                      title: const Text("Full Name"),
                      subtitle: Text(
                        "fist name second name",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
