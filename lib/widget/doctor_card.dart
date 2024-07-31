import 'package:flutter/material.dart';
import 'doctor_model.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:
                AssetImage(doctor.imagePath), // Replace with doctor image
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doctor.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(doctor.specialty, style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  SizedBox(width: 4),
                  Text(doctor.rating, style: TextStyle(color: Colors.orange)),
                  SizedBox(width: 8),
                  Text(doctor.reviews, style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 16),
                  Icon(Icons.access_time, color: Colors.grey, size: 16),
                  Text('open at ${doctor.openTime}',
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
