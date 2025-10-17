import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/core/theme/codes_extensions.dart';

//============ ▼ PAGES UESES NAVBAR ▼ ============
import 'package:new_project/screens/favorite_screen.dart';
import 'package:new_project/screens/home/home_screen.dart';
import 'package:new_project/screens/profile_screen.dart';
import 'package:new_project/screens/test_screen/emailed_screen.dart';
//============ ▲ PAGES UESES NAVBAR ▲ ============

class DashBoard extends StatefulWidget {
  final VoidCallback onToggleTheme;
  const DashBoard({super.key, required this.onToggleTheme});

  @override
  State<DashBoard> createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    //====== ▼ NAVBAR PAGES (Class) ▼ ======
    HomeScreen(),
    EmailedScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    //====== ▲ NAVBAR PAGES (Class) ▲ ======
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      //
      //============ ▼ APPBAR START ▼ ============
      appBar: AppBar(
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(
              isDark ? Icons.wb_sunny : Icons.nightlight_round,
              color: context.appColors.text,
            ),
            onPressed: widget.onToggleTheme,
          ),
        ],
        foregroundColor: context.appColors.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              [
                "Home",
                "NY Times EmailedArticles",
                "Favorites",
                "Profile",
              ][_selectedIndex],
              style: context.textStyles.h2,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //============ ▲ APPBAR ENDS ▲ ============
      //
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(119, 158, 158, 158),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        iconSize: 20,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        items: const [
          //============= ▼ NAV ICONS & LABELS ▼ =============
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye),
            label: "Viewed",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.mail),
            label: "Emailed",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.share),
            label: "Shared",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill, size: 30),
            label: "Profile",
            backgroundColor: Colors.black,
          ),
          //============ ▲ NAV ICONS & LABELS ▲ ===============
        ],
      ),
    );
  }
}
