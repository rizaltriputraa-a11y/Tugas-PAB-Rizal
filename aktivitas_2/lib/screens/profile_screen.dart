import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          Spacer(), // Catatan: Jika terjadi overflow pada layout aslinya, Anda bisa mengganti Spacer dengan SizedBox(height: 15) sesuai kode dokumen asli
          SizedBox(height: 15),
          Text(
            "Nama : Rizal Tri Putra",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "NBI : 14623xxxxx",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}