import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _pageIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const [
          Scaffold(
            backgroundColor: Colors.red,
          ),
          Scaffold(
            backgroundColor: Colors.blue,
          ),
          Scaffold(
            backgroundColor: Colors.green,
          ),
          Scaffold(
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.primaryColor,
        backgroundColor: Colors.blue,
        currentIndex: _pageIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _pageIndex = index;
            print(_pageIndex);
          });
        },
        selectedIconTheme: const IconThemeData(color: AppColors.thriedColor),
        selectedItemColor: AppColors.thriedColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: "organization"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: "notification"),
        ],
      ),
    );
  }
}
