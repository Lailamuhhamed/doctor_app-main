import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CategoryIcon(icon: Icons.coronavirus, label: 'Covid 19'),
        CategoryIcon(icon: Icons.person, label: 'Doctor'),
        CategoryIcon(icon: Icons.medical_services, label: 'Medicine'),
        CategoryIcon(icon: Icons.local_hospital, label: 'Hospital'),
      ],
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue.withOpacity(0.1),
          child: Icon(icon, color: Colors.blue, size: 30),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
