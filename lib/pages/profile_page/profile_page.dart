import 'package:flutter/material.dart';
import 'package:tugas_flutter_look_id/misc/constans.dart';
import 'package:tugas_flutter_look_id/pages/login_page/login_page.dart';

import '../../misc/methods.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                verticalSpace(20),
                userInfo(),
                verticalSpace(20),
                const Divider(),
                verticalSpace(20),
                profileInfo('Update Profile'),
                verticalSpace(20),
                profileInfo('My Wallet'),
                verticalSpace(20),
                profileInfo('Change Password'),
                verticalSpace(20),
                profileInfo('Change Language'),
                verticalSpace(20),
                const Divider(),
                verticalSpace(20),
                profileInfo('Contact Us'),
                verticalSpace(20),
                profileInfo('Privacy Policy'),
                verticalSpace(20),
                profileInfo('Terms and Conditions'),
                verticalSpace(50),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                        width: 0.5,
                        color: saffron,
                      )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text('Logout')),
                ),
                verticalSpace(20),
                const Text(
                  'Version 1.0.0',
                  style: TextStyle(fontSize: 12),
                ),
                verticalSpace(100),
              ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector profileInfo(String title) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }

  Column userInfo() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 1),
            image: const DecorationImage(
              image: AssetImage('assets/avatar.jpg'),
            ),
          ),
        ),
        verticalSpace(20),
        const Text(
          'Novri Amsyah',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpace(5),
        const Text(
          'novri@gmail.co.id',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
