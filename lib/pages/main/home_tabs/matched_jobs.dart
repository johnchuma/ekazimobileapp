import 'package:ekazi/utils/colors.dart';
import 'package:flutter/material.dart';

class MatchedJobs extends StatelessWidget {
  const MatchedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: const [
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
