import 'package:flutter/material.dart';


import '../widget/categories.dart';
import '../widget/header.dart';
import '../widget/search_field.dart';
import '../widget/top_selling.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 24,),
            SearchField(),
            SizedBox(height: 24,),
            Categories(),
            SizedBox(height: 24,),
            TopSelling(),
            SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}