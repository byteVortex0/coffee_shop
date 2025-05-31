import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            children: [
              Container(color: Color(0xFF111111)),
              Container(color: Color(0xFF313131).withValues(alpha: 0.6)),
            ],
          ),
        ),
        Expanded(flex: 2, child: Container(color: Color(0xFFF9F9F9))),
      ],
    );
  }
}
