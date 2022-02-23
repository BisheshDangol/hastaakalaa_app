import 'package:flutter/material.dart';
import 'package:patient_appointment_app/features/login/screens/doctor_profile_screen.dart';

class CardWrapper extends StatelessWidget {
  final String doctorName;
  const CardWrapper({Key? key, required this.doctorName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.7,
      // margin: EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorProfileScreen(),
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
                Text(doctorName, style: TextStyle(fontSize: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
