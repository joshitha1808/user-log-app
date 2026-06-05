import 'package:flutter/material.dart';
import 'package:user_log/feature/home/model/users.dart';

class UserTile extends StatelessWidget {
  final Users users;

  const UserTile({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(users.name),
      subtitle: Text(users.email),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
