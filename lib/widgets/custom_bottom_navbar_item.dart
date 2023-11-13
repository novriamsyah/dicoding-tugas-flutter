import 'package:flutter/material.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String title;
  final String image;
  final String selectedImage;
  const CustomBottomNavbarItem({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.title,
    required this.image,
    required this.selectedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 25,
          height: 25,
          child: Image.asset(
            isSelected ? selectedImage : image,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
