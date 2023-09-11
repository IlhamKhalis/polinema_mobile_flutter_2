import 'package:flutter/material.dart';
import 'package:ilham_jobsheet2/components/news_card.dart';

class HomeTodayLayout extends StatelessWidget {
  const HomeTodayLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewsCard(title:"Baru Gabung Al Hilal, Neymar Terang-terangan Bilang Ingin Jajal 2 Liga Lain" ),
        NewsCard(title:"Baru Gabung Al Hilal, Neymar Terang-terangan Bilang Ingin Jajal 2 Liga Lain" ),
      ],
    );
  }
}