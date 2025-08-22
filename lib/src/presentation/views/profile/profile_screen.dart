

import 'package:api_test/src/application/user/user_bloc.dart';
import 'package:api_test/src/application/user/user_event.dart';
import 'package:api_test/src/application/user/user_state.dart';
import 'package:api_test/src/domain/models/user_model/user_model.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  final String userId;

  const ProfileScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitial || state is UserLoaded) {
           
            context.read<UserBloc>().add(FetchUserDetail(userId));
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserDetailLoaded) {
            final UserModel user = state.user;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  const SizedBox(height: 20),
               
                  const SizedBox(height: 10),
                  Text(
                    user.email,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.badge, color: Colors.blue),
                            title: const Text("User ID"),
                            subtitle: Text(user.id.toString()),
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.email, color: Colors.blue),
                            title: const Text("Email"),
                            subtitle: Text(user.email),
                          ),
                          const Divider(),
                         
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (state is UserError) {
            return Center(child: Text("Error: ${state.error}"));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}