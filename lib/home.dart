import 'package:doctor_app/widget/category_Icons.dart';
import 'package:doctor_app/widget/doctor.dart';
import 'package:doctor_app/widget/doctor_card.dart';
import 'package:doctor_app/widget/doctor_model.dart';
import 'package:doctor_app/widget/header.dart';
import 'package:doctor_app/widget/input.dart';
import 'package:doctor_app/widget/near_doctor_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const HeaderWidget(),
              const DoctorWidget(),
              const InputWidget(),
              CategoryIcons(),
              Expanded(child: NearDoctorList()), // Use the NearDoctorList here
            ],
          ),
        ),
      ),
    );
  }
}
