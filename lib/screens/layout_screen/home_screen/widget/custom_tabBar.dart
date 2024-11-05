import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.green,
      labelColor: Colors.green,
      unselectedLabelColor: Colors.grey,
      tabs: [
        Tab(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(child: Text('All')),
          ),
        ),
        Tab(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(child: Text('Delivered')),
          ),
        ),
        Tab(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(child: Text('Out for delivery')),
          ),
        ),
        Tab(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Center(child: Text('Canceled')),
          ),
        ),
      ],
    );
  }
}
