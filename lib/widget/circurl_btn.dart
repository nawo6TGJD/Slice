import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign06/core/color.dart';

class CircleButton extends StatelessWidget {
  final Function() onTap;
  final String image;
  final Color? bgColor;
  final Color? iconColor;
  final double? size;
  const CircleButton({
    Key? key,
    required this.onTap,
    required this.image,
    this.bgColor,
    this.size,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size != null ? size : 80.0,
        width: size != null ? size : 90.0,
        padding: EdgeInsets.all(size != null ? 10.0 : 25.0),
        decoration: BoxDecoration(
          color: bgColor != null ? bgColor :red,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: blackShadow,
              blurRadius: 15``.0,
              offset: Offset(0, 8),
            )
          ],
        ),
        child: SvgPicture.asset(
          'assets/icons/$image',
          color: iconColor != null ? iconColor : red,
        ),
      ),
    );
  }
}
