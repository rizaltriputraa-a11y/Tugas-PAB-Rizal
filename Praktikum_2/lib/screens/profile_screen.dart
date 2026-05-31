import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFD6F0FF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 45),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.badge),
              title: Text("Rizal Tri Putra Amirullah"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("085815930862"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text("rizaltriputraA@gmail.com"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Surabaya"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text("pab2025"),
            ),
          ],
        ),
      ),
    );
  }
}