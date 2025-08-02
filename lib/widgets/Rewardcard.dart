import 'package:flutter/material.dart';

class RewardIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const RewardIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.lightBlue),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}