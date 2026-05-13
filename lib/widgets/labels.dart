import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String titleText;
  final String descriptionText;
  const Labels({
    super.key,
    required this.route,
    required this.titleText,
    required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, route);
          },
          child: Text(
            descriptionText,
            style: TextStyle(
              color: Colors.blue[600],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
