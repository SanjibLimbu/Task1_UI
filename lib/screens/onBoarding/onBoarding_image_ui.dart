
import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 43,
        right: 43,
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}