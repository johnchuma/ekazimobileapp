import 'package:ekazi/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SavedCvPage extends StatelessWidget {
  const SavedCvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "My Saved CVs"),
    );
  }
}
