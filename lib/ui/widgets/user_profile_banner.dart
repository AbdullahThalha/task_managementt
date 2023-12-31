import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 16),
      tileColor: Colors.green,
      leading: CircleAvatar(
        backgroundImage: NetworkImage('https://www.lus.ac.bd/author/rumel/'),
        radius: 15,
      ),

      title: Text('User name',style: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),),
      subtitle: Text('User email',style: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),),
    );
  }
}