import 'package:flutter/material.dart';

class Customicon extends StatelessWidget {
  const Customicon({super.key, required this.icon, this.onpressed});

  final void Function()? onpressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
