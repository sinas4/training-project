// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:exchange/ui/homepage.dart';

import 'package:exchange/ui/profile.dart';
import 'package:exchange/ui/ui_helper/bottom_bar.dart';
import 'package:exchange/ui/watch_list_page.dart';
import 'package:flutter/material.dart';

import 'MarketViewPage.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final PageController _myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.compare_arrows_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(
        controllerr: _myPage,
      ),
      body: PageView(
        controller: _myPage,
        children: const [
          HomePage(),
          MarketViewPage(),
          ProfilePage(),
          WatchListPage(),
        ],
      ),
    );
  }
}
