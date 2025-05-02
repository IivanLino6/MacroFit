import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String txt;
  final Function(String text) onChanged;
  final String error;
  final TextInputType txtType;
  final bool hideTxt;
  final String initialValue;
  final String userMessage;
  final double height;
  final TextEditingController? controller;
  final IconData? prefixIcon; // Nuevo argumento para el ícono

  const CustomFormField(
      {required this.txt,
      required this.onChanged,
      this.error = '',
      this.txtType = TextInputType.text,
      this.hideTxt = false,
      this.initialValue = '',
      this.userMessage = '',
      this.height = 5,
      this.controller,
      this.prefixIcon}); // Agregar prefixIcon a los argumentos

  @override
  State<CustomFormField> createState() => _TextCaptionState();
}

class _TextCaptionState extends State<CustomFormField> {
  //Crea variable de tipo controlador para acceder a las propiedades del field
  final TextEditingController _txtController = TextEditingController();

  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      onFieldSubmitted:(value) {
        // Oculta el teclado cuando presionas "Done"
        FocusScope.of(context).unfocus();
      },
      style: TextStyle(fontSize: 12),
      initialValue: widget.initialValue,
      obscureText: widget.hideTxt,
      keyboardType: widget.txtType,
      //controller: _txtController,
      decoration: InputDecoration(
        labelText: widget.txt,
        labelStyle: TextStyle(fontSize: 14),
        hintText: widget.userMessage,
        enabledBorder: UnderlineInputBorder(
            //Crea una variable para asginar propiedades de decoracion  al TextField
            borderSide: const BorderSide(
              color: Color.fromRGBO(244, 244, 244, 0),
            ),
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: UnderlineInputBorder(
            //Crea una variable para asginar propiedades de decoracion  al TextField
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding:
            EdgeInsets.symmetric(vertical: widget.height, horizontal: 10),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: Colors.black,
          size: 18,
        ), // Aquí se agrega el ícono
      ),
      onChanged: (value) {
        widget.onChanged(value);
      },
      onTapOutside: (event) {
        //Cierra el teclado si el usuario presiona afuera
        focusNode.unfocus();
      },
    );
  }
}
