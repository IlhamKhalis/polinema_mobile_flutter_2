import 'package:flutter/material.dart';
import 'package:ilham_jobsheet2/layouts/home/home_main_layout.dart';
import 'package:ilham_jobsheet2/layouts/home/home_today_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text("My App"),
      ),
      body: const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text("Berita Tebaru"),
                ),
                Tab(
                  child: Text("Pertandingan Hari ini"),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  HomeMainLayout(),
                  HomeTodayLayout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
