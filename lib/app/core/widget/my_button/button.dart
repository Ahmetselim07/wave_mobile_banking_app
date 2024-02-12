import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Widget? child;
  final double? width;
  final double? height;
  
  const MyButton({
    super.key,
    this.onTap,
    this.color,
    this.borderRadius,
    this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        
    
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child:child,
      ),
    );
  }
}
