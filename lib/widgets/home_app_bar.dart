import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget
{
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Text(
          'لـــي',
        ),
        Text(
          'لـــو',
          style: TextStyle(
              color: Colors.teal,
          ),
        ),
      ],
    );
  }
}