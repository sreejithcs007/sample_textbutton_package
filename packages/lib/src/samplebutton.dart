import 'package:flutter/material.dart';

class Smaplebuttons extends StatelessWidget {
  const Smaplebuttons({
    super.key,
    this.onPressed,
    required this.child,
    this.backgroundColor,
    this.shape,
    this.side,
    this.bordersidecolor,
  });

  final void Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;
  final WidgetStateProperty<OutlinedBorder?>? shape;
  final WidgetStateProperty<BorderSide?>? side;
  final Color? bordersidecolor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                backgroundColor ?? WidgetStateProperty.all(Colors.yellow),
            shape: shape ??
                WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6))),
            side: side ??
                WidgetStateProperty.all(
                    BorderSide(color: bordersidecolor ?? Colors.black))),
        child: child);
  }
}
