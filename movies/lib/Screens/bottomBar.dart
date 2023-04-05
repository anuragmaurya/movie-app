import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:movies/Screens/SearchScreen.dart';
import 'package:movies/Screens/homeScreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const Text("Third Screen"),
  ];
  void _optionSelected(int index) {
    setState(() {
      _selectedIndex = index;
      print("$_selectedIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Center(
        child: _widgetOption[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(80), topRight: Radius.circular(80)),
          child: BottomNavigationBar(
              backgroundColor: Colors.black,
              currentIndex: _selectedIndex,
              onTap: _optionSelected,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                    icon:
                        Icon(FluentSystemIcons.ic_fluent_movies_and_tv_regular),
                    activeIcon:
                        Icon(FluentSystemIcons.ic_fluent_movies_and_tv_filled),
                    label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                    activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                    label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                    activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                    label: "home"),
              ]),
        ),
      ),
    );
  }
}
