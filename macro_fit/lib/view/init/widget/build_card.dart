import 'package:flutter/material.dart';
import 'package:macro_fit/view/init/init_viewmodel.dart';

Widget buildCard({
  required int index,
  required String title,
  required String description,
  required IconData icon,
  required InitViewmodel vm,
}) {
  final isSelected = vm.selectedCardIndex == index;

  return GestureDetector(
    onTap: () {
      vm.selectCard(index);
    },
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: isSelected ? 355 : 350,
      height: isSelected ? 95 : 90,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? Colors.amber.withValues(alpha: 0.6) : Colors.white,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: isSelected ? 2 : 0.5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(description, style: const TextStyle(fontSize: 10, color: Colors.grey)),
        ],
      ),
    ),
  );
}
