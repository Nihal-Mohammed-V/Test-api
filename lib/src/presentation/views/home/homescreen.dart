import 'package:api_test/app/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
      
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                
                radius: 28,
              ),
              title: Text(
                'name',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text('email'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              context.router.push(ProfileRoute(user: ''));
              },
            ),
          );
        },
      ),
    );
  }
}
