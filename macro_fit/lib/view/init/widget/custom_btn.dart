import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final Function onFcn;
  final String txt;
  final Color color;
  final IconData? icon;
  final double width;
  final double height;

  const CustomBtn({
    super.key,
    required this.onFcn,
    required this.txt,
    this.color = Colors.blue,
    this.icon,
    this.width = 320.0, // Puedes especificar un ancho por defecto
    this.height = 40.0, // Puedes especificar una altura por defecto
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // Establece el ancho del botón
      height: height, // Establece la altura del botón
      child: icon != null
          ? TextButton.icon(
              onPressed: () {
                onFcn();
              },
              icon: Icon(icon, color: Colors.white),
              label: Text(
                txt,
                style: const TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),
              ),
            )
          : TextButton(
              onPressed: () {
                onFcn();
              },
              child: Text(
                txt,
                style: const TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),
              ),
            ),
    );
  }
}
