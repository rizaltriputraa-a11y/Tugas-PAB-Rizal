import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/book_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fb),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Lab.KICK",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        children: [
          // Sidebar
          const SidebarWidget(),
          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Banner
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/banner.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Book Cards
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: const [
                        BookCard(
                          image: "assets/images/buku1.jpg",
                          title: "Hujan",
                          desc: "Novel fiksi tentang masa depan bumi.",
                        ),
                        BookCard(
                          image: "assets/images/buku2.jpg",
                          title: "Teknologi AI",
                          desc: "Pembelajaran AI dan teknologi modern.",
                        ),
                        BookCard(
                          image: "assets/images/buku3.jpg",
                          title: "Matematika",
                          desc: "Rumus dan logika matematika modern.",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}