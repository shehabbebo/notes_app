import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = [
    Color(0xffD90E63),
    Color(0xffEF798A),
    Color(0xffF7A9A8),
    Color(0xff613F75),
    Color(0xffE5C3D1),
    Color(0xff988B8E),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    color: colors[index],
                    isActive: currentIndex == index,
                  ),
                ));
          }),
    );
  }
}
