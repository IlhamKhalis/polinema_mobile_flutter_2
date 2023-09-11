import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ilham_jobsheet2/components/news_card.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  // Function to create a bordered container around a child widget
  Widget _buildBorderedContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Add border styling here
        borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
      ),
      padding: const EdgeInsets.all(8),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://staticg.sportskeeda.com/editor/2020/11/f998f-16045808185901-800.jpg',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Text(
            'Maguire Mendekat Ke Palmerias',
            style: GoogleFonts.plusJakartaSans(fontSize: 21
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.purple),
            child: const Text("Transfer"),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              _buildBorderedContainer(
                NewsCard(title: "Baru Gabung Al Hilal, Neymar Terang-terangan Bilang Ingin Jajal 2 Liga Lain"),
              ),
              _buildBorderedContainer(
                NewsCard(title: "Baru Gabung Al Hilal, Neymar Terang-terangan Bilang Ingin Jajal 2 Liga Lain"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
