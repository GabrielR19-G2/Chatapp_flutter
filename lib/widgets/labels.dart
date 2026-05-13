import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'No tienes una cuenta?',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            print('navegacion pendiente crea una ahora.');
          },
          child: Text(
            'Crea una ahora!',
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
