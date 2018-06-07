import 'package:flutter/material.dart';
import 'package:iheart_festival/schedule/SchedulePage.dart';

class CustomTab extends StatelessWidget implements PreferredSizeWidget {

  final TabController _tabController;
  final List<TabData> _tabs;

  CustomTab(this._tabs, this._tabController);

  @override
  Size get preferredSize => Size(double.infinity, 50.0);

  Color _getColor(int index) {
    return index == _tabController.index ? const Color(0xFFFF7676) : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        indicatorColor: const Color(0xFFFF7676),
        tabs: _tabs.map((tab) {
          return Tab(
            child: Container(
                height: 50.0,
                width: 150.0,
                color: Colors.white,
                child: Center(child: Text(tab.label.toUpperCase(), style: TextStyle(color: _getColor(tab.index))))
            ),
          );
        }).toList(),
        controller: _tabController,
      ),
    );
  }
}