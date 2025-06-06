import 'package:flutter/material.dart';
import 'package:r_d_school/widgets/random_color_generator.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random color generator'),
        centerTitle: true,
      ),
      body: RandomColorGenerator(),
    );
  }
}
