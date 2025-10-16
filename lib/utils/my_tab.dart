import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: FittedBox( // 🔹 Evita overflow si el contenido no cabe
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ícono con fondo y borde
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.black87,
                  width: 1.5,
                ),
              ),
              child: Image.asset(
                iconPath,
                height: 28, // 🔹 tamaño equilibrado
                width: 28,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 6),

            // Texto del tab
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[800],
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
