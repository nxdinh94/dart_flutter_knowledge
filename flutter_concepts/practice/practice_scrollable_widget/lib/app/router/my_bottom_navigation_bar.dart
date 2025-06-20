import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({
    super.key,
    required this.child,
  });

  final StatefulNavigationShell child;

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int count  = 0;
  bool isInAddingTab = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          widget.child.goBranch(
            index,
            initialLocation: index == widget.child.currentIndex,
          );

          if(index == 1){
            setState(() {
              count++;
            });
          }
          // refresh ui whenever go through favorite tab
          if(index == 2){
            setState(() {
              isInAddingTab = true;
            });
          }else{
            setState(() {
              isInAddingTab = false;
            });
          }
        },
        currentIndex: widget.child.currentIndex,
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 10
        ),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            key: ValueKey('homeTabButton'),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            key: ValueKey('walletTabButton'),
            icon: Icon(Icons.account_balance_wallet_rounded, size: 24),
            label: 'Wallets',
          ),
          const BottomNavigationBarItem(
            key: ValueKey('accountTabButton'),
            icon: Icon(
              Icons.person,
              size: 28,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
