import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  final int _selectedIconBar = 3;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 34,
      currentIndex: _selectedIconBar,
      backgroundColor: const Color(0xff024272),
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.white,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      showSelectedLabels: true,
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Comfortaa',
        fontWeight: FontWeight.w500,
        shadows: [
          Shadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      selectedLabelStyle: const TextStyle(
        fontFamily: 'Comfortaa',
      ),
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('Images/HomeIcon.png'),
            size: 50,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('Images/book.svg'),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('Images/Events Icon.svg'),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('Images/people.svg'),
          label: 'Boards',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('Images/Awards Icon.svg'),
          label: 'Awards',
        ),
      ],
    );
  }
}
