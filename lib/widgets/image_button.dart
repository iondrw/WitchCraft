import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onPressed;
  final double size;

  const ImageButton({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onPressed,
    this.size = 150,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: ClipRRect(
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
                width: size,
                height: size,
              ),
            ),
          ),
          Positioned.fill(
            child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                shadowColor: WidgetStatePropertyAll(Colors.black),

                backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(108, 140, 117, 117),
                ),
                elevation: WidgetStateProperty.all(5),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
