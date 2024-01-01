import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget
{
  final String text;
  final Function() onTap;
  final double radius;
  final double width;
  final double height;
  final Color color;

  const CustomMaterialButton({super.key,
    required this.text,
    required this.onTap,
    this.width = 180,
    this.height = 50,
    this.radius = 20,
    required this.color,
  });

  @override
  Widget build(BuildContext context)
  {
    return Card(
      elevation: 20,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}