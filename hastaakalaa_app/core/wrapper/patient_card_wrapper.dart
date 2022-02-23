import 'package:flutter/material.dart';
import 'package:patient_appointment_app/features/login/screens/patient_profile_screen.dart';

class PatientCardWrapper extends StatelessWidget {
  final String patientName;
  const PatientCardWrapper({Key? key, required this.patientName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height / 11,
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PatientProfileScreen(),
              ),
            );
          },
          child: Card(
            elevation: 3.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(patientName, style: TextStyle(fontSize: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
