import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          bookCard(
            "Hujan",
            "320 Halaman",
          ),
          bookCard(
            "Flutter Dasar",
            "250 Halaman",
          ),
          bookCard(
            "Matematika",
            "180 Halaman",
          ),
          bookCard(
            "Sejarah Dunia",
            "200 Halaman",
          ),
        ],
      ),
    );
  }

  Widget bookCard(String title, String page) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.book,
              size: 50,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(page),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Pinjam"),
            ),
          ],
        ),
      ),
    );
  }
}