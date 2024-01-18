import 'package:flutter/material.dart';
import 'package:task_managementt/data/models/auth_utility.dart';
import 'package:task_managementt/ui/screens/auth/login_screens.dart';

class UserProfileBanner extends StatefulWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  State<UserProfileBanner> createState() => _UserProfileBannerState();
}

class _UserProfileBannerState extends State<UserProfileBanner> {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
      tileColor: Colors.green,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          AuthUtility.userInfo.data?.photo ?? '',

            ),
        onBackgroundImageError: (_,__){
         const Icon(Icons.image);
        },
        radius: 15,
      ),
      title: Text(
        '${AuthUtility.userInfo.data?.firstName ?? ''} ${AuthUtility.userInfo.data?.lastName ?? ''}',
      style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      subtitle:  Text(AuthUtility.userInfo.data?.email ?? 'Unknown',
        style: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      ),
      trailing: IconButton(
        onPressed: () async{
          await AuthUtility.clearUserInfo();
          if(mounted) {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()), (
                    route) => false);
          }
        },
        icon:const Icon(Icons.logout),
      ),
    );
  }
}