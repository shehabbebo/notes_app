import 'package:flutter/material.dart';
import 'package:note_app/views/weight/custom_searchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.titlel, required this.icon, this.onpressed});
  final String titlel;
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titlel,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        Customicon(
          onpressed: onpressed,
          icon: icon,
        ),
      ],
    );
  }
}
