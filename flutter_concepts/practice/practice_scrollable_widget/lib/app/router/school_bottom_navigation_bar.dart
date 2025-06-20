import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SchoolBottomNavigationBar extends StatefulWidget {
  const SchoolBottomNavigationBar({
    required this.child, super.key,
  });

  final StatefulNavigationShell child;

  @override
  State<SchoolBottomNavigationBar> createState() => _SchoolBottomNavigationBarState();
}

class _SchoolBottomNavigationBarState extends State<SchoolBottomNavigationBar> {
  int count = 0;
  bool isInAddingTab = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          widget.child.goBranch(
            index,
            initialLocation: index == widget.child.currentIndex,
          );
        },
        currentIndex: widget.child.currentIndex,
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_outlined, size: 24),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flight_class,
              size: 28,
            ),
            label: 'Flight Classes',
          ),
        ],
      ),
    );
  }
}
