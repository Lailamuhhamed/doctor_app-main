import 'package:flutter/material.dart';
import 'doctor_card.dart';
import 'doctor_model.dart';

class NearDoctorList extends StatelessWidget {
  final List<Doctor> doctors = [
    Doctor(
      name: 'Dr. Joseph Brostito',
      specialty: 'Dental Specialist',
      imagePath:
          'assets/images/dr_joseph.png', // Replace with actual image path
      distance: '1.2 KM',
      reviews: '120 Reviews',
      rating: '4.8',
      openTime: '17:00',
    ),
    Doctor(
      name: 'Dr. Imran Syahir',
      specialty: 'General Doctor',
      imagePath: 'assets/images/profile.png', // Replace with actual image path
      distance: '1.2 KM',
      reviews: '120 Reviews',
      rating: '4.8',
      openTime: '17:00',
    ),
    // Add more doctors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Near Doctor',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              return DoctorCard(doctor: doctors[index]);
            },
          ),
        ),
      ],
    );
  }
}
