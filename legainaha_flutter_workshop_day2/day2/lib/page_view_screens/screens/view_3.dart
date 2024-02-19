import 'dart:ui';
import 'package:flutter/material.dart';

class View3 extends StatelessWidget {
  const View3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _backImage(),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: 250,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.amber,
                  Colors.amber[200]!,
                ],
              ),
            ),
            child: _label(),
          ),
        ),
      ],
    );
  }

  Center _label() {
    return const Center(
      child: Text(
        'View 3',
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  SizedBox _backImage() {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/eberhard.jpg'),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
