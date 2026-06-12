import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  final Widget listTile;
  const CardWidgets({super.key, required this.listTile});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.black12),
      ),
      child: listTile,
    );
  }
}
