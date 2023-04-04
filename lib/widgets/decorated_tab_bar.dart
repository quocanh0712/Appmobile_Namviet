// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  const DecoratedTabBar({super.key, @required this.tabBar, @required this.decoration});

  final TabBar? tabBar;
  final BoxDecoration? decoration;

  @override
  Size get preferredSize => tabBar?.preferredSize ?? const Size(0, 0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Container(decoration: decoration)),
        tabBar ?? const SizedBox.shrink(),
      ],
    );
  }
}
