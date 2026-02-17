import 'package:flutter/material.dart';
import 'package:gammac_app/Screens/Subjects.dart';
import 'package:gammac_app/Services/colors.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          shadowColor: const Color.fromARGB(255, 4, 2, 65),
          actions: <Widget>[
            IconButton(
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const Subjects()));
                },
                icon: const Icon(Icons.home)),
          ],
          titleTextStyle:
              const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          backgroundColor: appc,
          title: const Text(
            'About App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child: SizedBox(
                      height: 360,
                      width: double.maxFinite,
                      child: Image.asset(
                        'assests/images/gammacapp_logo.jpg',
                        fit: BoxFit.cover,
                        opacity: const AlwaysStoppedAnimation(0.35),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    width: double.maxFinite,
                    child: Text(
                      "මෙම මෘදුකාංගය තුළ 2000 වර්ෂයේ සිට 2023 වර්ෂය දක්වා ඇති බහුවරණ ප්‍රශ්න සඳහා වන Discussion Videos ඇතුළත් කර ඇත. 'පේසුරු වර්ගීකරණය කළ බහුවරණ පොතෙහි'  ප්‍රශ්න ඇති අනුපිළිවෙලට මෙම මෘදුකාංගය සාදා ඇත. (දැනට භෞතික විද්‍යාව පමණක් ඇතුළත් කර ඇති අතර ඉදිරියේදී අනෙකුත් විෂයයන් සඳහාද යාවත්කාලීන කරනු ලැබේ.) \n\nමෙම මෘදුකාංගය භාවිත කිරීමේදී Data On කර තබාගැනීම අනිවාර්‍යයවේ.\n\nDiscussion Videos for MCQs from the year 2000 to 2023 have been included in this App. This App is developed in the order of the questions in 'Pasuru Classified Multiple Choice Questions Book'. (Currently only Physics is included and will be updated for other subjects in future.)\n\nIt is mandatory to turn on your Data while using this App.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
