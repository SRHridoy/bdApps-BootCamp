import 'package:flutter/material.dart';

class ListTileWidgets extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Icon? leading;
  final Icon? trailingIcon;
  final VoidCallback onTap;
  const ListTileWidgets({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailingIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
      leading: leading,
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: trailingIcon,
      onTap: onTap,
    );
  }
}
