import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final VoidCallback onPressed;
  final Color? color;

  const SocialButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.iconColor,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          iconSize: 30,
          iconColor: iconColor,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(Radius.zero),
          ),
          textStyle: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(title, style: TextStyle(color: Colors.black54)),
      ),
    );
  }
}
